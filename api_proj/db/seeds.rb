# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
    Artwork.destroy_all
    User.destroy_all

    paulo = User.create!(username: :paulo)
    chris = User.create!(username: :chris)
    mike = User.create!(username: :mike)
    alvin = User.create!(username: :alvin)

    mona = Artwork.create!(title: 'Mona Lisa', image_url: 'mona_lisa.com', artist_id: alvin.id)
    thinker = Artwork.create!(title: 'The Thinker', image_url: 'the_thinker.com', artist_id: mike.id)

    share1 = ArtworkShare.create!(viewer_id: paulo.id, artwork_id: mona.id)
    share2 = ArtworkShare.create!(viewer_id: chris.id, artwork_id: thinker.id)


