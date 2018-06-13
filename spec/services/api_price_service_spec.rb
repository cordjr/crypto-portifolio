#require_relative '../../app/services/ApiPriceService'
require 'rails_helper'

describe ApiPriceService do

    context 'with internet connection' do
        it "should return price data" do

            service = ApiPriceService.new
            price_data = service.get_price_data(['ETH', 'BTC'])
            expect(price_data).to be_truthy
            expect(price_data.count).to eq(2)

        end
    end

end
