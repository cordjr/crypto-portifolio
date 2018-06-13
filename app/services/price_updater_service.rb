require 'date'
class PriceUpdaterService

    def run()
        price_service =  ApiPriceService.new
        coin_list = Coin.all
        coin_symbol_list = coin_list.collect {|c| c.symbol }
        price_data = price_service.get_price_data(coin_symbol_list)
        coin_list.each do |coin|
            price = price_data.find { |d| d[coin.symbol] }['USD']
            coin.last_price = price
            coin.last_price_update = DateTime.now
            coin.update

        end

    end 
end