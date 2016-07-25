class Submission < ActiveRecord::Base
    has_many :comments
    has_many :bookmarks
    has_many :grades
    belongs_to :user
    belongs_to :assignment
    mount_uploader :audio, AudioUploader

    validates_presence_of :title

    require 'uri'

    def video_embed_code
    	video_uri = URI(self.video)
    	if video_uri.host == 'youtu.be'
    		id = video_uri.path
    		id[0]=''
    	else
    		id = Rack::Utils.parse_nested_query(video_uri.query)['v']
    	end

    	return "<iframe style='width:100%; min-height: 350px' src='https://www.youtube.com/embed/#{id}' frameborder='0' allowfullscreen></iframe>"
    end

end
