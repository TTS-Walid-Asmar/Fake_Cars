class AddAttachmentPhotosToVehicles < ActiveRecord::Migration
  def self.up
    change_table :vehicles do |t|
      t.attachment :photos
    end
  end

  def self.down
    remove_attachment :vehicles, :photos
  end
end
