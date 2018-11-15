class CreateOdevs < ActiveRecord::Migration[5.2]
  def change
    create_table :odevs do |t|
      t.integer :ogrid
      t.integer :ogretmen_id
      t.string :ad
      t.string :soyad
      t.string :sinif
      t.date :date
      t.date :teslim_date
      t.string :ders_adi
      t.text :aciklama
      t.string :durum

      t.timestamps
    end
  end
end
