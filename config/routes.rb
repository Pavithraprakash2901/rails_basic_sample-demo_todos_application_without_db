Rails.application.routes.draw do
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'welcome#index'


  
    # ...
    get '/contact_form', to: 'contact_form#new', as: 'contact_form'
    post '/contact_form', to: 'contact_form#create'
    # ...

  




  # get 'contact' to 'pages#contact'
  # get '/new_page', to: 'pages#new_page'
  # Defines the root path route ("/")
  # get '/contact_form', to: 'contact_form#new', as: 'contact_form'
  # post '/contact_form', to: 'contact_form#create'
  # get '/confirmation', to: 'contact_form#confirmation', as: 'confirmation'
  # # ...


  # root "articles#index"
end
