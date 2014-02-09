class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
    	t.string :type
    	t.string :grade
    	t.string :name
    	t.string :ingredient
    	t.integer :row_position 
      	t.timestamps
    end
  end
end
