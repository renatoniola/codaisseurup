class Event < ApplicationRecord



  belongs_to :user


  validates :name, presence: true
  validates :ends_at, presence: true #, if: :check_dates?
  validates :starts_at, presence: true

  validates :description, presence: true, length: { maximum: 500 }


  private


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
