  
class Gilt

  API_HOST = 'api.gilt.com/v1/'

 
  def initialize(key)
    @key = key
  end


  def search(keyword)
     gilt = HTTParty.get("https://api.gilt.com/v1/sales/#{keyword}/active.json?apikey=#{@key}")
     @results = JSON.parse(gilt.body)
  end

  def pull_title()
  	@results["sales"][0]["name"]
  end

  def pull_pic()
  	@results['sales'][0]["image_urls"]["161x110"][0]
  end

end