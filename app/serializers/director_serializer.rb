class DirectorSerializer < ActiveModel::Serializer

    # here we define the data to be shown for the Director model
    # and its related models

    attributes :id, :name, :birthplace, :female_director

    # this is going to show the movies related to the director
    # using this serializer
    has_many :movies, serializer: DirectorMovieSerializer

end
