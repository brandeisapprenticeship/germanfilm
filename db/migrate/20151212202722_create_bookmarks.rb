class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|

      t.timestamps null: false
      t.integer :user_id
      t.integer :submission_id
    end
  end
end
