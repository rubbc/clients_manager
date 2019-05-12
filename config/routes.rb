Rails.application.routes.draw do

  get 'contact', to: "pages#contact", as: :contact
  get 'about', to: "pages#about", as: :about

  get 'clients', to: "clients#index"
  get 'clients/:id', to: 'clients#show', as: :client

  post 'clients', to: "clients#create"

  root to: "clients#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
