class ModifyFullNameColumn < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :full_name, false
    change_column_default :users, :full_name, ''
  end
end
