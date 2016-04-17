class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.belongs_to :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
