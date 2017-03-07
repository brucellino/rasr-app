class GlibraryController < ApplicationController
  require "time"
  def index
    @repos = $repos.parsed_response
    @repo_list = @repos.map { |repo| repo['name']}
    #render json: @repos
  end
  def time_remaining

    return @glibrary_token_expires

  end
  def view
    
  end
end
