Rails.application.routes.draw do
  # get 'topics/index'
  # get 'topics/new'
  # get 'topics/show'
  # get 'topics/edit'
  
  root 'topics#index'
  
  # get    '/topics',          to: 'topics#index'
  
  # get    '/topics/new',      to: 'topics#new',  as: 'new_topic'
  
  # post   '/topics',          to: 'topics#create'
  # get    '/topics/:id/edit', to: 'topics#edit', as: 'edit_topic'
  # get    '/topics/:id',      to: 'topics#show', as: 'topic'
  
  # patch  '/topics/:id',      to: 'topics#update'
  # put    '/topics/:id',      to: 'topics#update'
  # delete '/topics/:id',      to: 'topics#destroy'
  
  
  resources :topics do
    member do
      post 'upvote'
    end
  end
  
end
