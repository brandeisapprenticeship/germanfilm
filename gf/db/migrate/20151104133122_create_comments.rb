class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.timestamps null: false
      t.text :comment
    end
  end
end
