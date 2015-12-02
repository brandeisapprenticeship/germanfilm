class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|

      t.timestamps null: false
      t.string :title
      t.integer :author
      t.integer :grade
      t.string :notecard
      t.string :vocabulary
      t.integer :assignment_id
      t.integer :user_id

    end
  end
end
