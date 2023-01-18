class Admin::Base < ApplicationRecord
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :admin, dependent: :destroy
end
