class Recipe < ApplicationRecord
  belongs_to :user
  has_many :doses
  has_many :reviews

  COURSE = ["Apero", "Starter", "Main Course", "Cheese", "Desert", "Digestive", "Golf", "Randonnée"].freeze
  validates :course, inclusion: {
      in: COURSE,

    }

  RESTRICTION = ["Vegan", "Fish", "Gluten-free", "Low-carb"].freeze
  validates :restriction, inclusion: {
      in: RESTRICTION,
    }
end
