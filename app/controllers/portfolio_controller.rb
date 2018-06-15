class PortfolioController < ApplicationController

  def index
    @portfolio = Portfolio.new
    @event = PortfolioEvent.new
    @portfolios = Portfolio.all
    @coins = Coin.all
    @events = PortfolioEvent.all
  end

  def create

    Portfolio.create(portfolio_params)
    flash[:success] = "Portfolio created!"

    redirect_to :action => "index"

  end

  def create_event
    PortfolioEvent.create(event_params)
    flash[:success] = "Event created"

    redirect_to :action => "index"

  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:name)
  end

  def event_params
    params.require(:portfolio_event).permit(:portfolio_id,
      :coin_id, :unit_price, :event_type, :amount, :date )
  end
end
