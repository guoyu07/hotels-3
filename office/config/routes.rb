Office::Application.routes.draw do
  devise_for :users

  as :user do
    get 'login', :to => "devise/sessions#new"
    get 'logout', :to => "devise/sessions#destroy"
  end

  root :to => 'home#index'

  scope path: '/office' do
    resources :hotels
  end

end
