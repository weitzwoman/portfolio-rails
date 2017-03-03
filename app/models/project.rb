class Project < ActiveRecord::Base
  # before_create :get_projects
  #
  # class << self
  #   def get_projects
  #     response = RestClient::Request.new(
  #       :method => :get,
  #       :url => "https://api.github.com/users/weitzwoman/repos",
  #       :user => 'weitzwoman',
  #       :password => ENV['API_KEY'],
  #       headers:
  #     ).execute
  #     response = JSON.parse(response)
  #   end
  # end
end
