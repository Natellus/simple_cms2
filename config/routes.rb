Rails.application.routes.draw do



  root 'demo#index'

  resources :subjects

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages

  resources :pages do
    member do
      get :delete
    end
  end

  resources :sections

  resources :sections do
    member do
      get :delete
    end
  end

  get 'demo/index'

  get 'demo/hello'

  get 'demo/other_hello'

  get 'demo/git'

  get 'demo/escape_output'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
