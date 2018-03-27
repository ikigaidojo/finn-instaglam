Rails.application.routes.draw do
#  get 'members/new'
#  get 'members/create'

  root to: "posts#index" 
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :members do
    member do
      get "/show_members_posts", to: "members#show_member_posts"
    end
  end
end
