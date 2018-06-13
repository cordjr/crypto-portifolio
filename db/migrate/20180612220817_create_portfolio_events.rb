class CreatePortfolioEvents < ActiveRecord::Migration
  def change
    create_table :portfolio_events do |t|
      t.integer :coin_id
      t.decimal :unit_price
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
