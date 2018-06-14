class Portfolio < ActiveRecord::Base
    has_many :portfolio_events, class_name: "PortfolioEvent", foreign_key: "portfolio_id"
end
