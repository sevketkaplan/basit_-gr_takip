class CreateOgrencis < ActiveRecord::Migration[5.2]
  def change
    create_table :ogrencis do |t|
      t.string :adi
      t.string :soyadi
      t.string :tc_no
      t.string :tel_no
      t.string :kan_grubu
      t.string :okul
      t.string :sinif
      t.string :bolum
      t.text :adres
      t.string :veli_ad
      t.string :veli_soyad
      t.string :veli_tel
      t.string :veli_tel2
      t.date :date

      t.timestamps
    end
  end
end
