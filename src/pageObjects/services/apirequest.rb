class Api_request
  def self.request(base_url,api_endpoint,auth,aut_code,cont_type,cont_type_code)
    $method = __method__
    $hl_api_client = Hl_api_test.new
    puts "Api_get_request"


    $hl_api_client.get("#{base_url}/#{api_endpoint}",
    :headers => { auth => aut_code,aut_code => cont_type_code,cont_type => cont_type_code}
    )
  end
end
