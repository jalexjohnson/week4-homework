Rails.application.routes.draw do

  root 'places#index'

  get '/places/new' => 'places#new', :as => 'new_place'
  post '/places' => 'places#create', :as => 'places'

  get '/places' => 'places#index'
  get '/places/:id' => 'places#show', :as => 'place' #place_url(id)

  get '/places/:id/edit' => 'places#edit', :as => 'edit_place' #edit_place_url(id)
  patch '/places/:id' => 'places#update' #place_url(id)

  delete '/places/:id' => 'places#destroy' #place_url(id)

  post '/reviews'  => 'reviews#create', :as => 'reviews'

  # root 'places#index'

  # get '/places/new' => 'places#new'
  # get '/places/submit_new' => 'places#submitted'

  # get '/places' => 'places#index'
  # get '/places/:id' => 'places#show'

  # get '/places/:id/edit' => 'places#edit'
  # get '/places/:id/submit_edit' => 'places#update'

  # get '/places/:id/delete' => 'places#delete'

  # get '/reviews/:place_id/submit_new'  => 'reviews#create'

end
