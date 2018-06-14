class PortfolioEvent < ActiveRecord::Base
    enum type: [:buy, :sell]
    belongs_to :portfolio, class_name: "Portfolio", foreign_key: "portfolio_id"
    has_one :coin, class_name: "Coin" ,foreign_key: "coin_id"

end
