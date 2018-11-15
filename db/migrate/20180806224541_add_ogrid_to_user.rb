class AddOgridToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ogrid, :integer
  end
end
