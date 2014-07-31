Splashpage::Application.routes.draw do
  root to: 'home#index'

  get 'thank_you', to: 'subscribers#thank_you'

  resources :subscribers
end
