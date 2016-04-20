class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :type
      t.belongs_to :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
