class VideoPost < ActiveRecord::Base

  has_many :thumbnails,
           :foreign_key => 'parent_id'

  #Geschriebener Code
  has_attachment :content_type => :image,
                 :storage => :file_system,
                 :path_prefix => 'public/files',
                 :max_size => 10.megabytes,
                 :resize_to => '640x480>',
                 :thumbnail_class => 'Thumbnail',
                 :thumbnails => { :thumb => '100x100' }

  validates_as_attachment
end
