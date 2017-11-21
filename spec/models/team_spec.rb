require 'rails_helper'

RSpec.describe Team, type: :model do
  let(:team) { build(:team) }

  describe 'Valid attributes' do
    it 'has a valid factory' do
      expect(team).to be_valid
    end

    it 'is invalid with blank attributes' do
      expect(Team.create(name: '', color: '')).not_to be_valid
    end
  end

  describe 'Model validations' do
    it { expect(team).to validate_presence_of(:name) }
    it { expect(team).to validate_length_of(:name).is_at_most(50) }
    it { expect(team).to validate_length_of(:color).is_at_most(6) }
  end
end
