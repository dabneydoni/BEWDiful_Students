require 'json'
require 'rest-client'
require_relative 'book'

class RemoteSource
  def self.get
    res = JSON.load(RestClient.get('http://api.nytimes.com/svc/books/v2/lists/hardcover-fiction?api-key=53c18abd690302703c7b66aaaa088e13:9:66955633'))
    res["results"].first["book_details"].first["title"]
    res["results"].map do |results|
    	results["book_details"].map do |book_details|
    		puts book_details["title"]
    	end
    end
  end
end

