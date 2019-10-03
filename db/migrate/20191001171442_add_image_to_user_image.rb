class AddImageToUserImage < ActiveRecord::Migration[5.2]
  
  def self.up
      add_attachment :user_images, :image
  end

  def self.down
      remove_attachment :user_images, :image
  end

end
