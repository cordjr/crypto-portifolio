class PortfolioController < ApplicationController

  def index
    @portfolio = Portfolio.new
    @portfolios = Portfolio.all
    @coins = Coin.all
  end

  def create

    Portfolio.create(portfolio_params)
    flash[:success] = "Portfolio created!"


    redirect_to :action => "index"

  end
  private 
  def portfolio_params
    params.require(:portfolio).permit(:name)
  end
end
