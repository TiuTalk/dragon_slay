require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'associations' do
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:icon) }
    it { is_expected.to validate_presence_of(:kind) }
    it { is_expected.to validate_presence_of(:value) }
  end
end
