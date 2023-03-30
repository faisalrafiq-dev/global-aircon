Rails.application.routes.draw do
  root to: 'home#index'

  scope :admin do
    get '/company', to: 'companies#index'
    put '/company', to: 'companies#update'
    get '/bookings/all', to: 'bookings#all'

    resources :aircon_prices, only: %i[index new create edit update destroy]
    resources :faqs, only: %i[new create edit update destroy]
    resources :services, only: %i[new create edit update destroy]

    devise_for :users
  end

  get '/about-us', to: 'aboutus#index'
  get '/aircon_prices', to: 'aircon_prices#index'
  get '/blogs', to: 'blogs#index'
  get '/book-now', to: 'bookings#index'
  get '/contact-us', to: 'companies#contact_us'
  get '/faqs', to: 'faqs#index'
  get '/home', to: 'home#index'
  get '/services', to: 'services#index'

  post '/bookings', to: 'bookings#create'
end
