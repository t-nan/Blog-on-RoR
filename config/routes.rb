Rails.application.routes.draw do
  root 'articles#welcome'

  resources :articles
end
