class AddTypeToPortifolioEvent < ActiveRecord::Migration
  def change
    add_column :portfolio_events, :event_type, :string, :limit=>[:buy, :sell]

  end
end
