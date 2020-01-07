Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# 左側がURL 右側がコントローラの名前とアクション
  get '/homes', to: 'homes#index'
  get '/news', to: 'news#addplant' 
end
