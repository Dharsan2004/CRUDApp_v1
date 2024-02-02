class Message < ApplicationRecord

  include HTTParty

  def self.getMessage
    url = "https://api.api-ninjas.com/v1/dadjokes?limit=1"



    begin
      response = HTTParty.get(
        url,
        headers: {
          'Content-Type' => 'application/json',
          'X-Api-Key' => 'moXQ4RF/iAaalLIPT81hMg==ESPDt89BksLFHVrv'
          # Add other headers as needed
        }
      )


      data = JSON.parse(response.body)
      p response.body
      return data[0]["joke"]

      rescue StandardError => e
        return "Not working Joke API"
    end


  end

end
