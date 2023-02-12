class Prototype < ApplicationRecord
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true

  # 投稿は１ユーザーに所属するので belongs_to :モデル単数形
  belongs_to :user
  # 投稿は複数のコメントを所有可能なので has_many :モデル複数形,投稿が削除されたたコメントも消えるオプション
  has_many :comments, dependent: :destroy
  has_one_attached :image
end
