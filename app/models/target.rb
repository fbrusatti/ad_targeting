class Target < ActiveRecord::Base
  # == Accessors
  attr_accessible :keyword_id, :state_id

  # == Associations
  belongs_to :keyword
  belongs_to :state

  # == Validations
  validates :keyword, :state, presence: true
end
