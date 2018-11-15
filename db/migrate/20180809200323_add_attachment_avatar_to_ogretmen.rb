class AddAttachmentAvatarToOgretmen < ActiveRecord::Migration[5.2]
  def self.up
    change_table :ogretmen do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :ogretmen, :avatar
  end
end
