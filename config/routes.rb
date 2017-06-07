# frozen_string_literal: true

Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :users, only: %i[index show]

  resources :lists, except: %i[new edit] do
    resources :list_items, except: %i[new edit]
  end

  # resources :list_items, only: [:show, :update, :destroy]

  resources :templates, except: %i[new edit] do
    resources :template_items, except: %i[new edit]
  end

  resources :examples, except: %i[new edit]
end
