class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.text :experience
      t.belongs_to :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
