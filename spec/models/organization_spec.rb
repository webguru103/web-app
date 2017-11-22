require 'rails_helper'

RSpec.describe Organization, type: :model do
  let(:organization) { build(:organization) }

  describe 'Valid attributes' do
    it 'has a valid factory' do
      expect(organization).to be_valid
    end
  end

  describe 'Model validations' do
    it { expect(organization).to validate_length_of(:name).is_at_most(50) }
  end
end
