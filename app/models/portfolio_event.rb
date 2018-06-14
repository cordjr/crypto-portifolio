class PortfolioEvent < ActiveRecord::Base
    enum event_type: [:buy, :sell]
    belongs_to :portfolio, class_name: "Portfolio", foreign_key: "portfolio_id"
    belongs_to :coin, class_name: "Coin"
    def total
        _total = amount * unit_price
        if @type == :sell
            _total = _total * -1
        end
         BigDecimal(_total.truncate(2).to_s("F"))
    end


end
