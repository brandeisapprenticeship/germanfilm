class Bookmark < ActiveRecord::Base
    belongs_to :submissions
    belongs_to :user
end
