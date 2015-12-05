class AddAudioToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :audio, :string
  end
end
