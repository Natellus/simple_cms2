Rails.application.routes.draw do

  get 'test2/index'

  root 'demo#index'

  get 'demo/index'

  get 'demo/hello'

  get 'demo/other_hello'

  get 'demo/git'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
