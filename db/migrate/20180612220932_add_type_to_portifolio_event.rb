class AddTypeToPortifolioEvent < ActiveRecord::Migration
  def change
    add_column :portfolio_events, :type, :enum, :limit=>[:buy, :sell]
    
  end
end
