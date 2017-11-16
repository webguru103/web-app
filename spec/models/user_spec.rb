require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'is invalid with blank attributes' do
    expect(User.create(email: '',
                       password: '',
                       password_confirmation: '')).not_to be_valid
  end

  describe 'User validations' do
    it { expect(user).to validate_presence_of(:email) }
  end
end
