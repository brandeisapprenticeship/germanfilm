class Submission < ActiveRecord::Base
    has_many :comments
    has_many :bookmarks
    has_many :grades
    belongs_to :user
    belongs_to :assignment
    mount_uploader :audio, AudioUploader

    validates_presence_of :title
end
