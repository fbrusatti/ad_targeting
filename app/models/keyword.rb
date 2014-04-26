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
    (clicks_count.to_f / impressions_count).round(2)
  end

  def impressions_count
    impressions.where("message is null").count
  end

  def clicks_count
    impressions.where("message like '%click%'").count
  end
end
