require 'uri'
require 'net/http'
require 'json'
require 'openssl'

class QuoteService
    def initialize()
      @key = '348D03E9-DDA8-4E71-99A4-3E6C82C87945'
      @base_rul = "https://rest.coinapi.io/v1/"
    end

    def get_quotes()

    end

    def get_quote(simbol)

    end

    def get_assets 
        url = @base_rul+ "assets"
        do_request(url)
    end

    private

    def do_request(endpoint)
        uri = URI(endpoint)
        http = Net::HTTP.new(uri.host, uri.port)
        request = Net::HTTP::Get.new("https://min-api.cryptocompare.com/data/top/pairs?fsym=BTC")
        request['X-CoinAPI-Key'] = @key
        response = http.request(request)
        text_response = response.read_body
        puts text_response
        return text_response

    end

    def to_json(text)
        JSON.parse(text)
    end





end