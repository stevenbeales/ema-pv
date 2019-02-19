Rails.application.routes.draw do
  resources :clinical_trials
  resources :post_marketings
  resources :class_warnings
  resources :frequencies
  resources :causalities
  resources :genders
  resources :age_groups
  resources :system_organ_classes
  resources :meddras
  mount RailsDb::Engine => '/', as: 'rails_db'
  resources :adverse_reactions
  resources :adverse_reaction_types
  resources :substances
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
