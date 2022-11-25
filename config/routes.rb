Rails.application.routes.draw do
  # devise_for :customers
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers, skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords],controllers: {
  sessions: "admin/sessions"
}
 resources :admin, only: [:index,:edit,:show,:new,:update,:create,:destroy,]
 resources :admin, only: [:genre_add,:genre_edit,:member_show,:member_edit,:order_log_list,:personal_oder_list,:personal_show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
