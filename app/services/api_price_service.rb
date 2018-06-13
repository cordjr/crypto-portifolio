require 'net/http'
require 'net/http'
require 'uri'
require 'json'
class ApiPriceService    

    
    def get_price_data(symbols=['BTC'])
        
        
        symbol_param = symbols.join(',')
        base_url = "https://min-api.cryptocompare.com/data/pricemultifull?fsyms=#{symbol_param},ETH&tsyms=USD"
        url = URI(base_url)
        puts url
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        get = Net::HTTP::Get.new(url)
        response = http.request get
        JSON.parse(response.read_body)
        
    end
end