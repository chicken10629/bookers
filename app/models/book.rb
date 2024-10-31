class Book < ApplicationRecord
  #各データが空白ではないかチェックする
  validates :title, presence: true
  validates :body, presence: true
end
