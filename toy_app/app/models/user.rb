class User < ApplicationRecord
  #1人のユーザーに複数のマイクロポストがある。
  has_many :microposts

  validates FILL_IN, presence: true
  # 「FILL_IN」をコードに置き換えてください
  validates FILL_IN, presence: true
  # 「FILL_IN」をコードに置き換えてください

end
