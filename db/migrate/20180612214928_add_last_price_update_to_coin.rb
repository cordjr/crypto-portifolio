class AddLastPriceUpdateToCoin < ActiveRecord::Migration
  def change
  add_column :coins, :last_price_update, :datetime
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
