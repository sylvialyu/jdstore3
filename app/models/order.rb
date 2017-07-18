class Order < ApplicationRecord

  validates :billing_name, presence: true
  validates :billing_address, presence: true
  validates :shipping_name, presence: true
  validates :shipping_address, presence: true

  belongs_to :user
  has_many :product_lists

end
