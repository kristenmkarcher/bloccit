Rails.application.routes.draw do
  get 'advertisement/index'

  get 'advertisement/show'

  get 'advertisement/new'

  get 'advertisement/create'

  resources :advertisement 

  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  resources :posts

  get 'about' => 'welcome#about'

  get 'welcome/contact'

  root 'welcome#index'
end
