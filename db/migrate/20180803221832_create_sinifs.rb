class CreateSinifs < ActiveRecord::Migration[5.2]
  def change
    create_table :sinifs do |t|
      t.string :adi

      t.timestamps
    end
  end
end
