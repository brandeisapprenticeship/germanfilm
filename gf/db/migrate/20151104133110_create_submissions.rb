class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|

      t.timestamps null: false
      t.string :title
      t.string :author
      
    end
  end
end
