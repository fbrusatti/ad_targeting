require 'spec_helper'

describe State do
  context 'Accessors' do
    it { should allow_mass_assignment_of(:name) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
  end

  context 'Associations' do
    it { should have_many(:targets) }
    it { should have_many(:keywords).through(:targets) }
  end
end
