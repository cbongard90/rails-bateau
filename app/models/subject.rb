class Subject < ApplicationRecord
  belongs_to :user
  has_many :chapters, dependent: :destroy
  belongs_to :category
end
