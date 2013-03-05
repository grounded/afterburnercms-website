Afterburnercms::Application.routes.draw do
  root :to => "users#index"

  resources :users, :only => [:index, :create]

  get "/thank_you" => "users#thank_you", :as => :thank_you
end
