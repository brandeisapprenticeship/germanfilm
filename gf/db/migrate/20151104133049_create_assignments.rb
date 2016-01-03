class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|

      t.timestamps null: false
      t.string :name
      t.text :description
      t.datetime :deadline
    end
  end
end
