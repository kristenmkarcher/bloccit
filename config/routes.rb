Rails.application.routes.draw do
  get 'sponsored_posts/show'

  get 'sponsored_posts/new'

  get 'sponsored_posts/edit'

  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  resources :topics do

    resources :sponsored_posts, except: [:index]
    resources :posts, except: [:index]
  end

  get 'about' => 'welcome#about'

  get 'welcome/contact'

  root 'welcome#index'
end
