require 'rails_helper'

describe Project do
  it 'will describe the get_projects model method', :vcr => true do
    projects = Project.get_projects
    expect(projects.length).to eq(15)
  end
end
