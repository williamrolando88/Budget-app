class Operation < ApplicationRecord
  belongs_to :user
  belongs_to :category

  def self.category_total(category_id)
    operations = Operation.where(category_id:)
    return 0 if operations.empty?

    operations.map(&:amount).sum.round(2)
  end
end
