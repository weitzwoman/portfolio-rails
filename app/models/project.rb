class Project < ActiveRecord::Base
  before_create :get_projects

  class << self
    def get_projects
      response = RestClient::Request.new(
      :method => :get,
      :url => 'https://api.github.com/users/weitzwoman/repos?per_page=150',
      headers: {:access_token => ENV['API_KEY']}).execute
      response = JSON.parse(response)
    end
  end
end
