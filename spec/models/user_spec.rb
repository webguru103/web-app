require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

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
end
