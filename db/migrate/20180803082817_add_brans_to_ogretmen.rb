class AddBransToOgretmen < ActiveRecord::Migration[5.2]
  def change
    add_column :ogretmen, :brans, :string
  end
end
