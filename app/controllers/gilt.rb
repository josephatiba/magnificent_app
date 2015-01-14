

class Gilt


  API_HOST = 'api.gilt.com/v1/'

 

  def initialize(key)
    @key = ENV['GILT_KEY']
  end


  def search()
     gilt = HTTParty.get("https://api.gilt.com/v1/sales/men/active.json?apikey=#{@key}")
     @results = JSON.parse(gilt.body)
  end

  def pull_title()
  	search["sales"][0]["name"]
  end

  def pull_pic()
  	search['sales'][0]["image_urls"]["315x295"][0]["url"]
  end

  def pull_url()
    search["sales"][0]["sale_url"]
  end

end