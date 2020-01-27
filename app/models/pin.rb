class Pin < ApplicationRecord
    validates :title, :description, :link, presence: true

    belongs_to :user,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id

    # belongs_to :board
    # class_name: 'Board',
    # foreign_key: :board_id,
    # primary_key: :id

    # has_many :users,
    # source: :boards,
    # through: :user


end
