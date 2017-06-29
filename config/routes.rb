# frozen_string_literal: true
Rails.application.routes.draw do
  use_doorkeeper
  devise_for :admins
  devise_for :users

  namespace :api do
    namespace :v1 do
      resource :profiles do
        get :me,            on: :collection
        get :users,         on: :collection
        get :lens_items,    on: :collection
        get :lens_models,   on: :collection
        get :camera_items,  on: :collection
        get :camera_models, on: :collection
      end
      resources :lens_models do
        resources :lens_items
      end
      resources :camera_models do
        resources :camera_items
      end
    end
  end

  root to: 'welcome#index'
  get 'welcome/index'
  resources :users

  resources :camera_items do
    member do
      get :crop_image
      put :crop_image
    end
  end
  resources :lens_items do
    member do
      get :crop_image
      put :crop_image
    end
  end

  resources :camera_models do
    get :select_camera_models, on: :collection
  end

  resources :lens_models do
    get :select_lens_models, on: :collection
  end
end
