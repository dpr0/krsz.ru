# frozen_string_literal: true
Rails.application.routes.draw do
  # devise_for :admins
  # devise_for :users
  root to: 'welcome#index'
  resources :users

  resources :camera_items  do
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
    collection do
      get :select_camera_models
    end
  end
  resources :lens_models do
    collection do
      get :select_lens_models
    end
  end

end
