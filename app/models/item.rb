class Item < ApplicationRecord
  # extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  belongs_to :user
  # belongs_to :primary_category
  # belongs_to :secondary_category
  # belongs_to :category

  validates :price, :delivery_area, :delivery_day, :delivery_charge, :image, presence: true
  validates :price, numericality: { with: /\A[0-9]+\z/, message: "は半角数字を使用して下さい" }
  validates :price, numericality: {greater_than: 300,less_than: 9999999}
  with_options presence: true do
    validates :name, length: { maximum: 40 }
    validates :description, length: { maximum: 1000 }
  end

  # def self.search(search)
  #   if search != ""
  #     Item.where('text LIKE(?)', "%#{search}%")
  #   else
  #     Item.all
  #   end
  # end

  # validates :primary_category_id, numericality: { other_than: 1, message: "can't be blank" }
  # validates :secondary_category_id, numericality: { other_than: 1, message: "can't be blank" }
end