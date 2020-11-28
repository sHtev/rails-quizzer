class Question < ApplicationRecord
  enum answer_types: { multiple: 'multiple', boolean: 'boolean', free: 'free' }

  belongs_to :round
end
