class AddVideoToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :video, :string
  end
end
