class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :website
      t.string :phone
      t.string :title

      t.timestamps null: false
    end
  end
end
