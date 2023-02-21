Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # AFFICHER TOUS LES ARTICLES
  get '/articles', to: 'articles#index'
  # CREATE
  get '/articles/new', to: 'articles#new', as: :article_new
  post '/articles', to: 'articles#create'
  # EDIT - UPDATE
  get '/articles/:id/edit', to: 'articles#edit', as: :article_edit
  patch '/articles/:id', to: 'articles#update'
  # DELETE
  delete '/articles/:id', to: 'articles#destroy'
  # SEE ONE ARTICLE
  get '/articles/:id', to: 'articles#show', as: :article
end
