class Store < ActiveRecord::Base
  has_many :employees
  
  validates :name, presence: true, length: {
    minimum: 3
  }
  validate :annual_revenue_validation
  validate :apparel_validation
  
  def annual_revenue_validation
    if annual_revenue.nil? || annual_revenue < 0
      errors.add(:annual_revenue, " invalid annual_revenue")
    end
  end

  def apparel_validation
    if !mens_apparel && !womens_apparel
      errors.add(:apparel, " need any apparel")
    end
  end

end


# Stores must always have a name that is a minimum of 3 characters
# Stores have an annual_revenue that is a number (integer) that must be 0 or more
# BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
