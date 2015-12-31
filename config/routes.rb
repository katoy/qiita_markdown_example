Rails.application.routes.draw do
  resources :pages
  post 'api_markdown' => 'pages#api_markdown'

end
