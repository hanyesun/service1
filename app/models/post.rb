class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    validates :board_id, presence: true
    has_many :comments
    belongs_to :user
    belongs_to :board
end
