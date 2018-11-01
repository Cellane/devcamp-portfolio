Rails.application.routes.draw do
  resources :articles
  resources :portfolios

  root to: 'pages#home'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
