require 'rails_helper'

RSpec.describe Ability, type: :model do
  describe 'Associations' do
    it { should belong_to(:hero) }
  end
end
