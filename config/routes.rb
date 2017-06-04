# frozen_string_literal: true

Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :users, only: [:index, :show]
  resources :lists, except: [:new, :edit]
  resources :list_items, except: [:new, :edit]
  resources :templates, except: [:new, :edit]
  resources :template_items, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
end
