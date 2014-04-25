require 'spec_helper'

describe Target do
  context 'Accessors' do
    it { should allow_mass_assignment_of(:keyword_id) }
    it { should allow_mass_assignment_of(:state_id) }
  end

  context 'Validations' do
    it { should validate_presence_of(:keyword) }
    it { should validate_presence_of(:state) }
  end

  context 'Associations' do
    it { should belong_to(:keyword) }
    it { should belong_to(:state) }
  end
end
