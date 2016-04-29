Rails.application.routes.draw do
  
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  resources :events do 
    resources :tickets
  end
  
  namespace :api do 
    namespace :v1 do
      # here we will get all information about event  
      resources :events do 
        get "/check/:ticket" => "events#check", on: :member
      end
    end
  end

  root "events#index"
end
