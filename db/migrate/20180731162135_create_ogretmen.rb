class CreateOgretmen < ActiveRecord::Migration[5.2]
  def change
    create_table :ogretmen do |t|
      t.string :adi
      t.string :soyadi
      t.string :tc_no
      t.string :kan_grubu
      t.float :aldigi_ucret
      t.string :tel
      t.string :tel2

      t.timestamps
    end
  end
end
