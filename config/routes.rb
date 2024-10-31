Rails.application.routes.draw do

  get 'books' => 'books#index', as: 'books'
  post 'books' => 'books#create', as: 'create_book'
  #index_pathで/booksが呼び出せるハズ
  #books_pathにしたらなぜか直った
  get 'books/:id' => 'books#show', as: 'book'
  #パス名をshowにしてたらbook_pathが定義されてませんと出たので
  #book_pathがshowに勝手になっているかも？
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'delete_book'
  get '/' => 'homes#top'
  root 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
