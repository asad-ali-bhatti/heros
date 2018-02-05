Rails.application.routes.draw do
  scope :api do
    resources :heros, module: :v1 ,only: [:index, :show] do
      resources :abilities,  only: [:index]
    end
   resources :abilities, module: :v1,  only: [:index, :show]
  end
end
