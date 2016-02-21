Rails.application.routes.draw do
	resources :drivers, only: [:new, :create]

	delete "/drivers/:id" => "drivers#destroy", as: :driver

	root "drivers#index"
end
