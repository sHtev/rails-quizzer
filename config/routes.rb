Rails.application.routes.draw do
  get 'welcome/index'

  resources :quizzes, param: :slug do
    resources :rounds, only: [:index, :show]
  end
  resources :rounds
  resources :questions

  resources :answer_sheets
  resources :answers

  root 'welcome#index'
end
