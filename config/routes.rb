Rails.application.routes.draw do
  resources :articles do
    member do
      post :toggle_status
    end
  end
  resources :portfolios, except: [:show]

  root to: 'pages#home'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
end
