class GlibraryController < ApplicationController
  require "time"
  @glibrary_token_created = Time.iso8601($glibrary_response['created'])
  @glibrary_ttl = $glibrary_response['ttl']
  @glibrary_token_expires = @glibrary_token_created + @glibrary_ttl
  puts" Glibrary token expires at #{@glibrary_token_expires}"
end
