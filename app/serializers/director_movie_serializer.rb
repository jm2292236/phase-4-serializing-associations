class DirectorMovieSerializer < ActiveModel::Serializer

    # here we are using the Movie model and its attributes
    # related to the Director model
    attributes :title, :year

    # and here the reviews associated with that movie
    has_many :reviews

end
