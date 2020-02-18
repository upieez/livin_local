class Place < ApplicationRecord
    # AR classes are singular and capitalized by convention
    belongs_to :user
    has_many :rating
    has_many :review
    has_and_belongs_to_many :tag
  end