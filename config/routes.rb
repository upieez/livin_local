Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'places#home'
    get '/places' => 'places#index', as: 'places'
    get '/places/new' => 'places#new', as: 'new_place'
    post '/places' => 'places#create'
    get '/places/creation' => 'places#creation'

    #Admin routes
    get '/places/pending' => 'admins#approve', as: 'approve_admins'

    get '/places/:id' => 'places#show' , as: 'place'
    get '/places/:id/edit' => 'places#edit', as: 'edit_place'
    patch '/places/:id' => 'places#update'
    delete '/places/:id' => 'places#destroy'

    #Review routes
    post '/places/:id' => 'reviews#create'


end
