Office::Application.routes.draw do
  devise_for :users

  as :user do
    get 'login', :to => "devise/sessions#new"
    get 'logout', :to => "devise/sessions#destroy"
  end

  root :to => 'home#index'

  scope path: '/office' do

    scope section: 'hotels' do
      resources :hotels do
        get :general, on: :member, hotel_section: 'general'

        resources :room_types, hotel_section: 'room_types'
      end
    end

  end

end
