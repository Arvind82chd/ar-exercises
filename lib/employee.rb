class Employee < ActiveRecord::Base

  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate_validation, presence: true
  validates :store_id, presence: true

  def hourly_rate_validation
    if hourly_rate < 40 || hourly_rate > 200
      error.add(:hourly_rate, "Not acceptable range")
      false
    else
      true
    end
  end

end
