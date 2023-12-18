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
  root to: "home#index"
end
