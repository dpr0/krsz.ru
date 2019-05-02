# frozen_string_literal: true

Rails.application.routes.draw do
  resources :houses, only: %i[index show] do
    resources :entrances, only: %i[index show] do
      resources :questions do
        resources :attaches
        resources :answers do
          resources :attaches
        end
      end
    end
    resources :questions do
      resources :attaches
      resources :answers do
        resources :attaches
      end
    end
  end
  use_doorkeeper
  devise_for :admins
  devise_for :users

  namespace :api do
    namespace :v1 do
      resource :home do
        post :co2_data,     on: :collection
      end
      resource :profiles do
        get :me,            on: :collection
        get :users,         on: :collection
        get :lens_items,    on: :collection
        get :lens_models,   on: :collection
        get :camera_items,  on: :collection
        get :camera_models, on: :collection
      end
      resources :lens_models, only: %i[index show] do
        resources :lens_items
      end
      resources :camera_models, only: %i[index show] do
        resources :camera_items
      end
    end
  end

  root to: 'welcome#index'
  get 'welcome/index'
  get 'stroymat/index'
  get 'kitchen/index'
  get 'chess/index'
  get 'home/index'
  resources :users, only: %i[index show edit update]

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

  resources :camera_models, only: %i[index show] do
    get :select_camera_models, on: :collection
  end

  resources :lens_models, only: %i[index show] do
    get :select_lens_models, on: :collection
    get :edit_index, on: :collection
    post :update_sony_forum_link, on: :member
  end

  resources :questions, shallow: true do
    resources :attaches
    resources :answers, shallow: true do
      resources :attaches
    end
  end

  mount ActionCable.server => '/cable'
end
