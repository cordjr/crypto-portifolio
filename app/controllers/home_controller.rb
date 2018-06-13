class HomeController < ApplicationController
    def index
      @coins = Coin.all

    end

    def cards
      @coins = Coin.all

      render partial: "cards"
    end
end
