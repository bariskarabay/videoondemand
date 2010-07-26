class CreateThumbnails < ActiveRecord::Migration
  def self.up
    create_table :thumbnails do |t|
      t.integer :parent_id
      t.string :content_type, :filename, :thumbnail
      t.integer :size, :width, :height
      t.timestamps
    end
  end

  def self.down
    drop_table :thumbnails
  end
end
