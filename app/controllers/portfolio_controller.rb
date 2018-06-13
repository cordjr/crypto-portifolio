class PortfolioController < ApplicationController

  def index
    @portfolio = Portfolio.new
    @portfolios = Portfolio.all
    @coins = Coin.all
  end

  def create
    redirect_to "portfolio#index"

  end
end
