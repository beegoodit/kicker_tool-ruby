KickerTool::Engine.routes.draw do
  resources :exports do
    resources :qualifyings, only: [:index, :show] do
      resources :participants, only: [:index, :show]
      resources :rounds, only: [:index, :show] do
        resources :matches, only: [:index, :show]
      end
      resources :standings, only: [:index, :show] do
        resource :stats
      end
    end
  end

  resources :process_export_asset_services, only: [:new, :create]
  resources :qualifyings, only: [:index, :show]
  resources :tournaments

  resources :disciplines, only: [:index, :show]
  resources :matches, only: [:index, :show]
  resources :options, only: [:index, :show]
  resources :options_disciplines, only: [:index, :show]
  resources :participants, only: [:index, :show]
  resources :players, only: [:index, :show]
  resources :rounds, only: [:index, :show]
  resources :sets, only: [:index, :show]
  resources :standings, only: [:index, :show]
  resources :stats, only: [:index, :show]
  resources :teams, only: [:index, :show]

  root to: "home#index"
end
