class PortfolioEvent < ActiveRecord::Base
    enum type: [:buy, :sell]
    belongs_to :portfolio, class_name: "Portfolio", foreign_key: "portfolio_id"
    has_one :coin, class_name: "Coin" ,foreign_key: "coin_id"
    def total
        _total = amount * unit_price
        if @type == :sell
            _total = _total * -1
        end
         BigDecimal(_total.truncate(2).to_s("F"))        
    end
    

end
