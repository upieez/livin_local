Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'places#index'
    get '/places' => 'places#index', as: 'places'
    get '/places/new' => 'places#new', as: 'new_place'
    post '/places' => 'places#create'
    get '/places/:id' => 'places#show' , as: 'place'
    get '/places/:id/edit' => 'places#edit', as: 'edit_place'
    patch '/places/:id' => 'places#update'
    delete '/places/:id' => 'places#destroy'
end
