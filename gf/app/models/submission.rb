class Submission < ActiveRecord::Base
    has_many :comments
    has_many :bookmarks
    belongs_to :users
    belongs_to :assignment
    mount_uploader :audio, AudioUploader
end
