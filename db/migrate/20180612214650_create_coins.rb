class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :symbol
      t.string :name
      t.decimal :last_price
      t.string :icon_path

      t.timestamps null: false
    end
  end
end
