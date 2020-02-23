class Place < ApplicationRecord
    # AR classes are singular and capitalized by convention
    belongs_to :user
    has_many :rating
    has_many :review
    has_many :favourite
    has_and_belongs_to_many :tag

# scope to get tag id
    scope :filter_by_tag_id, -> (tag_id) { where tag_id: tag_id }

  end