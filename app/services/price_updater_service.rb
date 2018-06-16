require 'date'
class PriceUpdaterService

    def run()

        price_service =  ApiPriceService.new
        coin_list = Coin.all
        coin_symbol_list = coin_list.collect {|c| c.symbol }
        price_data = price_service.get_price_data(coin_symbol_list)
        coin_list.each do |coin|
            puts price_data["RAW"][coin.symbol]["USD"]["PRICE"]
            price = price_data["RAW"][coin.symbol]["USD"]["PRICE"]
            coin.last_price =  price.to_d
            coin.last_price_update = DateTime.now
            coin.save

        end

    end
end
