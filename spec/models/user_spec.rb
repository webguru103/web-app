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

  describe 'Avatar' do
    it 'has the correct format' do
      expect(uploader).to be_format('png')
    end
  end
end
