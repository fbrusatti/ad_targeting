class Keyword < ActiveRecord::Base
  # == Accessors
  attr_accessible :name, :state_ids

  # == Associations
  has_many :targets
  has_many :states, through: :targets

  # == Validations
  validates :name, presence: true

  is_impressionable

  # == Instance Methods
  def click_rate
    return 0 if impressionist_count == 0
    (impressions.where("message like '%click%'").count.to_f / impressionist_count).round(2)
  end
end
