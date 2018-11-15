class AddAdresToOgretmen < ActiveRecord::Migration[5.2]
  def change
    add_column :ogretmen, :adres, :string
  end
end
