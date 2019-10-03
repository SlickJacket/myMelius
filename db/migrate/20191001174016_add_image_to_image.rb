class AddImageToImage < ActiveRecord::Migration[5.2]
  def self.up
    add_attachment :images, :image
 end
 def self.down
    remove_attachment :images, :image
 end
end
