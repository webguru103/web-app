require 'rails_helper'

RSpec.describe MessageTemplate, type: :model do
  let(:message_template) { build(:message_template) }

  describe 'Valid attributes' do
    it 'has a valid factory' do
      expect(message_template).to be_valid
    end
  end

  describe 'Model enum attribute' do
    it { expect(message_template).to define_enum_for(:type) }
  end

  describe 'Model validations' do
    it { expect(message_template).to validate_length_of(:subject).is_at_most(100) }
    it { expect(message_template).to validate_length_of(:body).is_at_most(2000) }
    it { expect(message_template).to validate_length_of(:sender).is_at_most(50) }
  end
end
