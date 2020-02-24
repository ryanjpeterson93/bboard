Rails.application.routes.draw do
root 'bills#index'

resources :bills

resources :artists do
  resources :songs
end


get 'new_bill_song/:id', to: 'bills#new_song', as: 'new_bill_song'
post 'add_bill_song/:id/:song_id', to: 'bills#add_song', as: 'add_artist_song'
delete 'remove_bill_song/:id/:song_id', to: 'bills#remove_song', as: 'remove_bill_song'

end
