class AddOperationRefToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :operations, :category, null: false, foreign_key: true
  end
end
