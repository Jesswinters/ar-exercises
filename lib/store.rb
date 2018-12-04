class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true,
            length: {minimum: 3}
  validates :annual_revenue,
            numericality: true,
            numericality: {greater_than: 0}

  validate :must_carry_apparel

  def must_carry_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, :womens_apparel, "Must carry at least one apparel")
    end
  end
end
