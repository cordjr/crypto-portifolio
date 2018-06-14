class Portfolio < ActiveRecord::Base
    has_many :portfolio_events, class_name: "PortfolioEvent", foreign_key: "portfolio_id"

    def avg_cost
        if portfolio_events.empty?
            return 0
        end
        total = portfolio_events.map{ |e| e.total }.inject :+
        result = total / portfolio_events.count
        return  BigDecimal(result.truncate(2)).to_s("F")
    end
    


end
