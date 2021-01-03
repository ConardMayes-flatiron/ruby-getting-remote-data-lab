# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    attr_accessor :string
    
    def initialize(string)
        @string = string
    end

    def get_response_body
        uri = URI.parse(@string)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json

    JSON
        programs = JSON.parse(self.get_response_body)
        programs.collect do |program|
            program
        end
    end
end
