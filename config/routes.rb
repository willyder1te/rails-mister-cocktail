Rails.application.routes.draw do

  resources :cocktails, only: [:index, :show, :create, :new] do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :doses, only: [:new, :create, :destroy]
  end
root :to => "cocktails#home"

end
