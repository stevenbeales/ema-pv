Rails.application.routes.draw do
  mount RailsDb::Engine => '/', as: 'rails_db'
  resources :adverse_reactions
  resources :adverse_reaction_types
  resources :substances
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
