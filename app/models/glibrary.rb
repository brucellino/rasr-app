class Glibrary < ApplicationRecord
  def index
    @repos = $repos.parsed_response.all
  end
end
