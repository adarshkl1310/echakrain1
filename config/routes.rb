Rails.application.routes.draw do

  devise_for :users
 
    root to: "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :homes
   
    resources :secureechakras

   resources :products do
   resources :sellproducts
   
   end
  
  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
