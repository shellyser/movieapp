class MoviesController < ApplicationController
    def index
     @movies = Movie.new
     @parsedmovies = @movies.parse
    end

    def update_next
      @movies = Movie.new
      @movies.next
      @parsedmovies = @movies.parse
      redirect_to '/'
    end

    def update_previous
      @movies = Movie.new
      @movies.prev
      @parsedmovies = @movies.parse
      redirect_to '/'
    end

end
