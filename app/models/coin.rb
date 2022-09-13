class Coin < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    @resp = Faraday.get "https://api.coincap.io/v2/assets" do |req|
      req.params['search'] = ticker_symbol
      req.params['limit'] = 1
    end
    body = JSON.parse(@resp.body)
    begin
      return new(ticker: body['data'][0]['symbol'], name: body['data'][0]['name'], last_price: body['data'][0]['priceUsd'].to_d.truncate(2))
    rescue => exception
      return nil
    end
    # if body['data'][0] != nil
    #   return new(ticker: body['data'][0]['symbol'], name: body['data'][0]['name'], last_price: body['data'][0]['priceUsd'].to_d.truncate(2))
    # else 
    #   return nil
    # end
  end
end
