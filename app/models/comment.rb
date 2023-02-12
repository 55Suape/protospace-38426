class Comment < ApplicationRecord
  validates :content, presence: true

  # コメントは１ユーザーかつ１投稿に所属するので belongs_to :モデル単数形
  belongs_to :prototype
  belongs_to :user
end
