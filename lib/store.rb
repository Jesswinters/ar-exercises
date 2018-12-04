class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true,
            length: {minimum: 3}
  validates :annual_revenue,
            numericality: true,
            numericality: {greater_than: 0}

  validate :must_carry_apparel

  def must_carry_apparel
    if (self.mens_apparel == false && self.womens_apparel == false) || (self.mens_apparel == nil && self.womens_apparel == nil)
      errors.add(:mens_apparel, "Must carry at least one apparel")
      errors.add(:womens_apparel, "Must carry at least one apparel")
    end
  end
end
