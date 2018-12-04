class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true,
            length: {minimum: 3}
  validates :annual_revenue,
            numericality: true,
            numericality: {greater_than: 0}

  validate :must_carry_apparel

  def must_carry_apparel
    if (!mens_apparel && !womens_apparel)
      errors.add(:mens_apparel, "Must carry at least one apparel")
      errors.add(:womens_apparel, "Must carry at least one apparel")
    end
  end

  before_destroy :store_destroy_checker

  private
    def store_destroy_checker
      unless employees.empty?
        errors.add(:base, message: "Cannot delete store that has employees")
        throw(:abort)
      end
    end
end
