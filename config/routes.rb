Rails.application.routes.draw do
  resources :personals
  resources :players
  resources :season_stats
  resources :searches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
