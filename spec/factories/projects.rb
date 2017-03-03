FactoryGirl.define do
  factory :project do
    name "That thing with Rails"
    description "does a thing, probably with loops"
    stargazers_count 2
    url "https://www.github.com"
  end
end
