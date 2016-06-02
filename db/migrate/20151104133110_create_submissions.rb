class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|

      t.timestamps null: false
      t.string :title
      t.string :name
      t.float :grade
      t.text :notecard
      t.string :vocab_english_1
      t.string :vocab_english_2
      t.string :vocab_english_3
      t.string :vocab_english_4
      t.string :vocab_english_5
      t.string :vocab_ger_1
      t.string :vocab_ger_2
      t.string :vocab_ger_3
      t.string :vocab_ger_4
      t.string :vocab_ger_5
      t.integer :assignment_id
      t.integer :user_id

    end
  end
end
