class AddAttachmentAvatarToOgrencis < ActiveRecord::Migration[5.2]
  def self.up
    change_table :ogrencis do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :ogrencis, :avatar
  end
end
