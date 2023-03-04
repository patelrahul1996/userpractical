Rails.application.routes.draw do
  
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  get 'home/index'
  #devise_for :users
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_up => "register" }
  resources :company
  resources :companycustomfield  
  #get '/company/new', to: 'company#new', as: 'companies'
  post 'company', to: 'company#create', as: 'companies'
  post 'companycustomfield', to: 'companycustomfield#create', as: 'company_custom_fields'
  put 'companycustomfield', to: 'companycustomfield#update', as: 'custom_fields_update'
  #get 'company/new' => 'company#new'
  #get 'company/edit' => 'company#edit'
  #get 'companycustomfield/new' => 'companycustomfield#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
