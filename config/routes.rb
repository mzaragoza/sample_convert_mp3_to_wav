Rails.application.routes.draw do

  resources :musics
  match ":id/make_mp3" => "musics#make_mp3", :as => :make_mp3, via: :all
  root 'pages#index'
end
