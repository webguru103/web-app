require 'rails_helper'

RSpec.describe Action, type: :model do
  let(:action) { build(:action) }

  describe 'Valid attributes' do
    it 'has a valid factory' do
      expect(action).to be_valid
    end
  end

  describe 'Model validations' do
    it { expect(action).to validate_length_of(:description).is_at_most(200) }
  end
end
