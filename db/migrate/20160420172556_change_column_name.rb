class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :procedures, :type, :type_procedure
  end
end
