

class Gilt


  API_HOST = 'api.gilt.com/v1'

 

  def initialize(key)
    @key = ENV['GILT_KEY']
  end



  def gilt_search

     gilt_all_sales = HTTParty.get("https://#{API_HOST}/sales/active.json?apikey=#{@key}")
     gilt_all_sales_results = JSON.parse(gilt_all_sales.body)
     gilt_all_sales_results["sales"]


     # gilt_women = HTTParty.get("https://#{API_HOST}/sales/women/active.json?apikey=#{@key}")
     # gilt_women_results = JSON.parse(gilt_women.body)
     # gilt_women_results["sales"]
     # # gilt_search.push(gilt_men_results)


     array_of_sales_results_combined = []

     gilt_all_sales_results["sales"].each do |item|
     #  # initialize container array
        container_of_sales = {
          sale_name: "",
          image_url: "",
          sale_url: "", 
          store: ""
        }
        # put in container array values
        container_of_sales[:sale_name] = item["name"]
        container_of_sales[:image_url] = item["image_urls"]["315x295"][0]["url"]
        container_of_sales[:sale_url] = item["sale_url"]
        container_of_sales[:store] = item["store"]

        # push container array to array of sales results
        array_of_sales_results_combined.push(container_of_sales)
     end

     # gilt_women_results["sales"].each do |item|
     #  # initialize container array
     #    container_of_sales = {
     #      sale_name: "",
     #      image_url: "",
     #      sale_url: "",
     #      store: ""
     #    }

     #    container_of_sales[:sale_name] = item["name"]
     #    container_of_sales[:image_url] = item["image_urls"]["315x295"][0]["url"]
     #    container_of_sales[:sale_url] = item["sale_url"]
     #    container_of_sales[:store] = item["store"]

     #    array_of_sales_results_combined.push(container_of_sales)
     # end

     return array_of_sales_results_combined.shuffle


  end


end