class Category < ApplicationRecord
    has_many :articles, dependent: :destroy

    scope :ordered, -> { order(:title) }
end
