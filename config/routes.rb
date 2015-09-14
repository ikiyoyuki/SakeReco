Rails.application.routes.draw do
  get 'records' => 'records#index' # レコード一覧画面
  get 'records/new' => 'records#new' # レコード投稿画面
  post 'records' => 'records#create' # レコード投稿機能
end
