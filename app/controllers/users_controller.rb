class UsersController < ApplicationController
  def my_portfolio
    @tracked_coins = current_user.coins
  end
end
