require 'spec_helper'

describe Keyword do
  context 'Accessors' do
    it { should allow_mass_assignment_of(:name) }
    it { should allow_mass_assignment_of(:state_ids) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
  end

  context 'Associations' do
    it { should have_many(:targets) }
    it { should have_many(:states).through(:targets) }
  end
end
