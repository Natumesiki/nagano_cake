class Admin::Item < ApplicationRecord
   has_one_attached :image
    belongs_to :genre
has_many :order, dependent: :destroy

 with_options presence: true do
   validates :genre
   validates :description
   validates :price
   validates :stock
 end
end
