class AddOgrsinifToOgrencis < ActiveRecord::Migration[5.2]
  def change
    add_column :ogrencis, :ogrsinif, :string
  end
end
