Rails.application.routes.draw do
  # devise_for :customers
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers, skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: "public/sessions"
}

namespace :public do
get "homes/about" => "homes#about"
resources :addresses, only: [:index,:edit,:show,:new,:update,:create,:destroy,]
resources :cart_items, only: [:index]
resources :customers, only: [:edit,:quit,:show]
resources :items, only: [:index,:show]
resources :orders, only: [:index,:new,:show,:thanx]
end

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords],controllers: {
  sessions: "admin/sessions"
}


namespace :admin do
    root :to => "homes#top"
  get 'items/index' => 'items#index',  as: 'index'

 # resources :admin, only: [:index,:edit,:show,:new,:update,:create,:destroy,]
 resources :items, only: [:index,:edit,:show,:new,:update,:create,:destroy,]
 resources :genres, only: [:index,:edit,:update,:create,:destroy,]
 resources :customers, only: [:index,:edit,:show,:update,:create,:destroy,]
 resources :orders, only: [:show,:update,:create,:destroy,]

end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

