class ProjectsController < ApplicationController
  def index
    @projects = Project.get_projects
  end
end
