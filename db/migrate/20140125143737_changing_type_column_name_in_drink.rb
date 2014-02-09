class ChangingTypeColumnNameInDrink < ActiveRecord::Migration
  def change
    rename_column :drinks, :type, :drink_type
  end
end
