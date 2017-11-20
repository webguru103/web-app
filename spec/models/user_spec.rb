require 'rails_helper'

RSpec.describe User, type: :model do
  include CarrierWave::Test::Matchers

  let(:user) { build(:user) }
  let(:uploader) { AvatarUploader.new(user, :avatar) }

  before do
    AvatarUploader.enable_processing = true
    File.open("#{Rails.root}/spec/factories/test_image.png") { |f| uploader.store!(f) }
  end

  after do
    AvatarUploader.enable_processing = false
    uploader.remove!
  end

  before :each do
    user.skip_confirmation!
    user.save
  end

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'is invalid with blank attributes' do
    expect(User.create(email: '',
                       password: '',
                       password_confirmation: '',
                       first_name: '',
                       last_name: '',
                       display_name: '',
                       timezone: '')).not_to be_valid
  end

  describe 'User validations' do
    it { expect(user).to validate_presence_of(:first_name) }
    it { expect(user).to validate_presence_of(:last_name) }
    it { expect(user).to validate_presence_of(:display_name) }
    it { expect(user).to validate_presence_of(:timezone) }
    it { expect(user).to validate_length_of(:email).is_at_most(100) }
    it { expect(user).to validate_length_of(:first_name).is_at_most(50) }
    it { expect(user).to validate_length_of(:last_name).is_at_most(50) }
    it { expect(user).to validate_length_of(:display_name).is_at_most(50) }
  end

  describe 'User methods' do
    it { expect(user.display_name).to eq(user.first_name) }
  end

  describe 'User avatar' do
    it 'the header version to be exactly 30 by 30 pixels' do
      expect(uploader.header).to have_dimensions(30, 30)
    end

    it 'the team version to be exactly 40 by 40 pixels' do
      expect(uploader.team).to have_dimensions(40, 40)
    end

    it 'the member version to be exactly 55 by 55 pixels' do
      expect(uploader.member).to have_dimensions(55, 55)
    end

    it 'the profile version to be exactly 100 by 100 pixels' do
      expect(uploader.profile).to have_dimensions(100, 100)
    end
  end
end
