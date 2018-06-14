require 'rails_helper'

describe "Price Updates Service" do

    context "should update all prices in database when " do
        
        price_updater = PriceUpdaterService.new
        price_updater.run
        Coin.all do  |coin| 
            puts coin.last_price
            puts coin.last_price_update
            expect(coin.last_price).not_to be nil  
            expect(coin.last_price).not_to be 0    
            expect(coin.last_price_update).not_to be nil
        end
    end
    
    
end
