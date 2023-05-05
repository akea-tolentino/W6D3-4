Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # resources :users
  # resources :users, only:[:create, :destroy] -- When you "Only" want to create the routes in the arr
  # resources :users, except:[:create, :destroy] -- When you  wnat to create everything "Except" routes in the arr


  #index is just a collection not actually indexing in
  #index and create dont need indexs becuase they havent been assigned yet
  #VERB, PATH,          CONTROLLER#ACTION,  PREFIX's
  get 'users', to: 'users#index', as: 'users'
  post 'users', to: 'users#create'
  get 'users/new', to: 'users#new', as: 'new_user'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'
  put 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'


  # Defines the root path route ("/")
  # root "articles#index"
end
