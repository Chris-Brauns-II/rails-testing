Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hello/:last_name', to: 'example#hello'
  get '/hello', to: 'example#hello_world'
end
