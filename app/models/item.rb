class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_fee
  belongs_to :prefecture
  belongs_to :days_to_ship

  with_options presence: true do
    validates :image
    validates :title
    validates :description
    validates :price
  end

  validates :price, format: {with: /\A[0-9]+\z/, message: "Half-width number"}
  validates :price, format: {with: /[3-9][0-9]{2}|[1-9][0-9]{3,6}/, message: "Out of setting range"} 

  with_options numericality: {other_than: 0, message: "Select"} do
    validates :category_id
    validates :condition_id
    validates :delivery_fee_id
    validates :prefecture_id
    validates :days_to_ship_id
  end
  
end
