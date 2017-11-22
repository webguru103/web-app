require 'rails_helper'

RSpec.describe TeamMember, type: :model do
  let(:team_member) { build(:team_member) }

  describe 'Valid attributes' do
    it 'has a valid factory' do
      expect(team_member).to be_valid
    end
  end

  describe 'Model enum attribute' do
    it { expect(team_member).to define_enum_for(:status) }
    it { expect(team_member).to define_enum_for(:role) }
  end
end
