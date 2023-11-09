class Article < ApplicationRecord

    validates :title,  presence: true
    validates :description, presence: true, length: {:minimum => 6}

    def to_s
        title
    end

    belongs_to :user
    
    has_one_attached :image
    
    has_rich_text :description
end
