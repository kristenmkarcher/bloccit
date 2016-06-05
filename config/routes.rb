Rails.application.routes.draw do

  get 'questions/index'

  get 'questions/new'

  get 'questions/create'

  get 'questions/show'

  get 'questions/edit'

  get 'questions/update'

  get 'questions/destroy'

  resources :questions

  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  resources :posts

  get 'about' => 'welcome#about'

  get 'welcome/contact'

  root 'welcome#index'
end
