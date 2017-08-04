Rails.application.routes.draw do
  
  root 'welcome#index'

  devise_for :users

  resources :products, :categories, :brands
  



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
