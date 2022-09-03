Rails.application.routes.draw do

    # movies
    resources :movies, only: [:index, :show, :create]
    get '/movies/:id/summary', to: 'movies#summary'
    get '/movie_summaries', to: 'movies#summaries'

    # directors
    resources :directors, only: [:index, :show]

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
