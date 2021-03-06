Rails.application.routes.draw do
  devise_for :users
  root 'records#index'
  get 'records' => 'records#index' # レコード一覧画面
  get 'records/new' => 'records#new' # レコード投稿画面
  post 'records' => 'records#create' # レコード投稿機能
  delete 'records/:id' => 'records#destroy' # レコード削除機能
  get 'users/:id' => 'users#show' # マイページ
end
