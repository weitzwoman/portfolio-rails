class Project < ActiveRecord::Base
  before_create :get_projects

  class << self
    def get_projects
      response = RestClient.get("https://api.github.com/users/weitzwoman/repos?", headers: {"access_token": ENV['API_KEY'] })
      response = JSON.parse(response)
    end
  end
end
