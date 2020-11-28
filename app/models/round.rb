class Round < ApplicationRecord
  belongs_to :quiz
  has_one :category
end
