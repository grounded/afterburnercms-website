Afterburnercms::Application.routes.draw do
  get "/" => "users#index"
  post "/" => "users#create", :as => :users
  get "/thank_you" => "users#thank_you", :as => :thank_you
end
