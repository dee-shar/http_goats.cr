require "json"
require "http/client"

class HttpGoats
  def initialize()
    @headers = HTTP::Headers {
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://httpgoats.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_status(status : Int32) : JSON::Any
    JSON.parse(@http_client.get("/#{status}.json", headers: @headers).body)
  end
end    
