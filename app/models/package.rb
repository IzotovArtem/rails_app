class Package < ApplicationRecord
  validates :name,:surname, :patronymic, :phonenumber, :email, presence: true
  validates :length, :width, :height, :weight, :distance, :price, numericality: true
  validates :POfD, :destination, presence: true
end
