class PortfolioEvent < ActiveRecord::Base
    enum type: [:buy, :sell]
end
