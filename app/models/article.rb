class Article < ApplicationRecord
  belongs_to :category

  has_one_attached :preview_img
end
