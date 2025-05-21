class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates :name, presence: true
    validates :address, presence: true
    validates :phone_number, length: {minimum: 11}
    validates :category, inclusion: { in: ["chinese","italian","japanese","french", "belgian"], message: "%{value }Not a vlaid option" }
end
