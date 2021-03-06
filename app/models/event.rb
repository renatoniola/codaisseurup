class Event < ApplicationRecord
  belongs_to :user
  has_many :photos

  BARGAIN_PRICE = 30

  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :ends_at, presence: true # , if: :check_dates?
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  validates :description, presence: true, length: { maximum: 500 }


  def bargain?
    price < BARGAIN_PRICE
  end

  def self.order_by_price
    order :price
  end


  # def check_dates?
  #
  #   if :ends_at > :starts_at
  #       return true
  #     else
  #       errors.add(:ends_at, "cannot be before starts_at")
  #       return false
  #   end
  #
  #
  # end
end
