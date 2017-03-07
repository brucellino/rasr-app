class ApplicationController < ActionController::Base
  require "awesome_print"
  include HTTParty
  require "json"
  puts "new glibrary"
  base_uri "https://glibrary.ct.infn.it:3500/v2"
  # Connect to glibrary right here.
  format :json
  #headers 'Content-Type:application/json'
  default_options.update(verify: false)
  # We need a means to check whether an existing token is valid

  $glibrary_response = post("/users/login", :body => {:username => ENV['GLIBRARY_USERNAME'], :password => ENV['GLIBRARY_PASSWORD']} ,  :header =>  "Content-Type:Application/json").parsed_response
  ap $glibrary_response
  @glibrary_token_created = Time.iso8601($glibrary_response['created'])
  @glibrary_ttl = $glibrary_response['ttl']
  $glibrary_token_expires = @glibrary_token_created + @glibrary_ttl
  puts" Glibrary token expires at #{@glibrary_token_expires}"

  $repos = get("/repos/", :headers => {"Content-Type" => "Application/json", "Authorization" => $glibrary_response['id']})

end
