class Category < ApplicationRecord
  enum media_types: { audio: 'audio', video: 'video', image: 'image', text: 'text' }
  validates :status, inclusion: { in: media_types.keys }
end
