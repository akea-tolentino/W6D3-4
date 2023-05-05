class User < ApplicationRecord
    validates :username, uniqueness: true

    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy

    has_many :views,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy

    has_many :viewed_artworks,
        through: :views,
        source: :artwork,
        dependent: :destroy

    
end
