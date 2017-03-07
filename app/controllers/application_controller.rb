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

  $glibrary_response = HTTParty::post("#{base_uri}" + "/users/login", :body => {:username => ENV['GLIBRARY_USERNAME'], :password => ENV['GLIBRARY_PASSWORD']} ,  :header =>  "Content-Type:Application/json").parsed_response
  ap $glibrary_response


  $repos = get("/repos/")
end
