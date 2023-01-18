class Public::Base < ApplicationRecord

    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

     has_many :public, dependent: :destroy
end
