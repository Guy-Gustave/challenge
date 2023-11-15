class Course < ApplicationRecord

    validates :title, :description, :short_description, :language, :level, :price, presence: true
    validates :description, presence: true, length: {:minimum => 5}

    def to_s
        title
    end

    belongs_to :user
    
    has_rich_text :description

    extend FriendlyId
    friendly_id :title, use: :slugged
end
