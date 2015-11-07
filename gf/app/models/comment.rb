class Comment < ActiveRecord::Base
    belongs_to :submission
    belongs_to :users
    
end
