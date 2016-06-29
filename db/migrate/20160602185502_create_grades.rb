class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :submission_id
      t.integer :user_id
      t.text :comment
      t.float :grade

      t.timestamps null: false
    end
  end
end
