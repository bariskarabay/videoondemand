class Thumbnail < ActiveRecord::Base

  belongs_to :videopost

  has_attachment :storage => :file_system,
                 :path_prefix => 'public/files/thumbnails/',
                 :content_type => :image

  
end
