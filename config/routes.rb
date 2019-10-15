Rails.application.routes.draw do

  root "pages#home" 
  get '/about', to: "pages#about"
  get '/help', to: "pages#help"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :todos, :foobar


  resources :pages do 
    collection do
      get :about
    end
  end



end
