class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :phone_number, presence: true

  def details
    return "Name: #{name} | Address: #{address} | Style: #{category}"
  end
end
