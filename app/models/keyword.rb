class Keyword < ActiveRecord::Base
  # == Accessors
  attr_accessible :name, :state_ids

  # == Associations
  has_many :targets
  has_many :states, through: :targets

  # == Validations
  validates :name, presence: true

  is_impressionable
end
