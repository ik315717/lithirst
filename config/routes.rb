Rails.application.routes.draw do
  get 'welcome/index'

  #devise_for :users 

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :venues do
    resources :deals
  end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
