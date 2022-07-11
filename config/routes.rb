Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:show, :new, :index, :create] do
    resources :bookmarks, only: [:show, :create, :delete, :new]
  end
end
