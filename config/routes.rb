Rails.application.routes.draw do

#   devise_for :admin,  skip: [:registrations, :passwords] ,controllers: {
#   sessions: "admin/sessions"
# }

#   devise_for :customers, skip: [:passwords],controllers: {
#   registrations: "public/registrations",
#   sessions: 'public/sessions'
# }



 namespace :admin do
  root to: 'homes#top'
  # root to: "home#index"
    resources :items, only: [:index, :edit,:new,:show,:create,:update,:destroy]
    resources :customers
    resources :genres
    resources :orders

  end

  namespace :public do
    root to: 'homes#top'

     resources :public_form, only:[:top]
     resources :items
     resources :orders
     resources :cart_items
     resources :customers

  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
