Rails.application.routes.draw do
  # resources generate the 7 refstul routes.
  root "posts#index"
  resources :posts, except:  [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
