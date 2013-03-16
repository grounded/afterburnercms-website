Afterburnercms::Application.routes.draw do
  resources :email_signups, :only => [:new, :create]
  root :to => 'email_signups#new'
end
