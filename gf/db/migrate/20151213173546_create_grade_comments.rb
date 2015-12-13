class CreateGradeComments < ActiveRecord::Migration
  def change
    create_table :grade_comments do |t|
    	t.text :comment
    	t.integer :submission_id
    	t.integer :user_id
      t.timestamps null: false
    end
  end
end
