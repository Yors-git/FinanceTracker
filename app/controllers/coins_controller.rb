class CoinsController < ApplicationController
  def search
    @coin = Coin.new_lookup(params[:coin])
    # render json: @coin, status: :unprocessable_entity
    render 'users/my_portfolio'
  end
end