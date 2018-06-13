require 'rails_helper'

Rspec.describe "Price Updates Service" do

    context "should update all prices in database when " do
        price_updater = PriceUpdaterService.new
        price_updater.run
        Coin.all do  |coin| 
            expect(coin.last_price).not_to be nil   
            expect(coin.last_price_update).not_to be nil
        end
    end
    
    
end
