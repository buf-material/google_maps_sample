Rails.application.routes.draw do
  root 'place#index'

  namespace :place do
    # get 'place/list' request
    get 'list'
  end

  resources :place, :only => [ :index, :show, :create, :destroy ]
end
