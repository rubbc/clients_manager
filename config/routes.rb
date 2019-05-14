Rails.application.routes.draw do

  get 'contact', to: "pages#contact", as: :contact
  get 'about', to: "pages#about", as: :about


  resources :clients
  # #Afficher tous
  # get 'clients', to: "clients#index"

  # #Afficher un
  # get 'clients/:id', to: 'clients#show', as: :client

  # #Créer
  # get 'clients/new', to: 'clients#new'
  # post 'clients', to: 'clients#create'

  # #Updater
  # get 'clients/:id/edit', to: 'clients#edit'
  # patch 'clients/:id', to: 'clients#update'

  # #Supprimer
  # delete 'clients/:id', to: 'clients#destroy'

  root to: "clients#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
