class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|

      t.timestamps null: false
      t.string :title
      t.string :author
      t.integer :grade
      t.string :notecard
      t.string :vocabulary

    end
  end
end
