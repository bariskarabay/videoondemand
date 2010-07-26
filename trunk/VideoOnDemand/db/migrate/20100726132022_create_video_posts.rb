class CreateVideoPosts < ActiveRecord::Migration
  def self.up
    create_table :video_posts do |t|
      #Eigene Tebelleneinträge
      t.string :title
      t.text :description
      #Attachment_fu
      t.integer :parent_id
      t.string :content_type, :filename, :thumbnail
      t.integer :size, :width, :height
      #

      t.timestamps
    end
  end

  def self.down
    drop_table :video_posts
  end
end
