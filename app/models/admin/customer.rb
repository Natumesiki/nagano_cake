class Admin::Customer < ApplicationRecord
has_many :order, dependent: :destroy
has_many :item, dependent: :destroy

end
