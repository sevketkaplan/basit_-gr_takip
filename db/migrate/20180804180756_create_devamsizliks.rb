class CreateDevamsizliks < ActiveRecord::Migration[5.2]
  def change
    create_table :devamsizliks do |t|
      t.string :ad
      t.string :soyad
      t.string :tc_no
      t.string :mesaj_tel
      t.string :ogrsinif
      t.string :devamsizlik_miktari

      t.timestamps
    end
  end
end
