class GlibraryController < ApplicationController
  require "time"

  def time_remaining
    
    return @glibrary_token_expires

  end
end
