class Coin < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    @resp = Faraday.get "https://api.coincap.io/v2/assets" do |req|
      req.params['search'] = ticker_symbol
      req.params['limit'] = 1
    end
    body = JSON.parse(@resp.body)
    body['data'][0]['priceUsd'].to_d
  end
end
