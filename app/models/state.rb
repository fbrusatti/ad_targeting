class State < ActiveRecord::Base
  # == Accessors
  attr_accessible :name

  # == Associations
  has_many :targets
  has_many :keywords, through: :targets

  # == Validations
  validates :name, presence: true
end
