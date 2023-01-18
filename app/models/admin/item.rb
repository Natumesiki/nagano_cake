class Admin::Item < ApplicationRecord
   has_one_attached :image
    belongs_to :genre
has_many :order, dependent: :destroy
end
