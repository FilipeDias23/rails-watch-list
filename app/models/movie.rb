class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :title, :overview, presence: true

  # private

  # def prevent_destroy
  #   if
  # end
end
