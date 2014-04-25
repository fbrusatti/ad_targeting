class Keyword < ActiveRecord::Base
  # == Accessors
  attr_accessible :name

  # == Associations
  has_many :targets
  has_many :states, through: :targets

  # == Validations
  validates :name, presence: true
end
