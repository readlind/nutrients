class EnforcingNilConstraintonGrade < ActiveRecord::Migration
  def change
  	change_column_default :drinks, :grade, nil
  end
end
