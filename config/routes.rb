Rails.application.routes.draw do

  devise_for :admin,  skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  devise_for :customers, skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

 namespace :admin do
   root to: 'homes#top'
    resources :items
    resources :customers
    resources :genres
    resources :homes, only: [:about, :top ]
    resources :orders
  end

  namespace :public do
     resources :public_form, only:[:top]
     resources :items
     resources :homes, only: [:top ]
     resources :orders
     resources :cart_items
     resources :customers

  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end