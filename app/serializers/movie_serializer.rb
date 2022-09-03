class MovieSerializer < ActiveModel::Serializer

    # in this file, we are defining all the data that is going to be shown
    # for the Movie model

    # from the movies table it is going to show these attributes
    attributes :id, :title, :year, :length, :description, :poster_url, :category, :discount
  
    # also from the related tables
    belongs_to :director
    has_many :reviews

end
