class Quiz < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :slug, presence: true, uniqueness: {case_sensitive: false}
  before_validation :slug_if_blank

  has_many :rounds

  def to_param
    slug
  end

  protected

  def slug_if_blank
    self[:slug] = self[:title].parameterize if self[:slug].blank?
  end
end
