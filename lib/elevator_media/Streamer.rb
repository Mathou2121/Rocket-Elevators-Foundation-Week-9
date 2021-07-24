# require 'rails_helper'
require 'elevator_media/Streamer'
require 'rest-client'
require 'json'
require 'rest-client'

module ElevatorMedia 
    class Streamer

        def getContent
            body = RestClient.get('https://animechan.vercel.app/api/random')
            result = JSON.parse(body)
            quote = result["quote"]
            p quote
        end

    end 
end
