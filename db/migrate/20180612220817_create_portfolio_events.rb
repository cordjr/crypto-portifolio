class CreatePortfolioEvents < ActiveRecord::Migration
  def change
    create_table :portfolio_events do |t|
      t.integer :coin_id
      t.decimal :unit_price
      t.decimal :amount
      t.integer :portfolio_id
      t.date :date
      
      

      t.timestamps null: false
    end
  end
end
