Rails.application.routes.draw do
  

  get 'add_ticket/:ticket_type' => "cart#add_ticket", as: :add_ticket

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :events do 
    resources :tickets
  end
  
  root "events#index"
end
