Rails.application.routes.draw do

  #set root to pages index
  root to: "pages#index"

  #callback sessions setup
  get '/auth/:provider/callback', to: 'sessions#create'
  
end
