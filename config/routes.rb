Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'
  resources :teams
  resources :projects
  resources :tasks
  resources :details
  resources :task_comments
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
