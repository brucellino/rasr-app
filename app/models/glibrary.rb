class Glibrary < ApplicationRecord
  require "awesome_print"
  include HTTParty
  puts "new glibrary"
  # Connect to glibrary right here.
  format :json
  #headers 'Content-Type:application/json'
  default_options.update(verify: false)
  # We need a means to check whether an existing token is valid
  base_uri  "https://glibrary.ct.infn.it:3500/v2"

  #  attr_accessor :token, :time_remaining
  puts "Base URI is #{base_uri}"

  def initialize
    $token = ""
    @expires_at = DateTime.now()

    puts  "in initialize"
    puts "about to login"
    status = self.Login()
    ap status
    $token = status['id']
  end

  def Login
    puts "in login"
    response = self.class.post("/users/login", :body => {:username => ENV['GLIBRARY_USERNAME'], :password => ENV['GLIBRARY_PASSWORD']} ,  :header =>  "Content-Type:Application/json")
    return response
  end
end
