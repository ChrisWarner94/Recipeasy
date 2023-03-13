class Recipe < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: [:name],
                  using: {
                    tsearch: { prefix: true }
                  }
end
