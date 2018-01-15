require 'rails_helper'

RSpec.describe Hero, type: :model do
  describe 'Associations' do
    it { should have_many(:abilities) }
  end
end
