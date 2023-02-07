# frozen_string_literal: true

require_relative 'themoviedb_lib/version'
require_relative 'themoviedb_lib/api/movie'
require_relative 'themoviedb_lib/api/network'
require_relative 'themoviedb_lib/api/trending'
require_relative 'themoviedb_lib/api/review'
require_relative 'themoviedb_lib/api/search'
require_relative 'themoviedb_lib/models/credentials'
module ThemoviedbLib
  class ThemoviedbClient
    def initialize(configs)
      @configs = configs
    end

    def movies
      @movies ||= ThemoviedbLib::Api::Movie.new(@configs)
    end

    def networks
      @networks ||= ThemoviedbLib::Api::Network.new(@configs)
    end

    def trending
      @trending ||= ThemoviedbLib::Api::Trending.new(@configs)
    end

    def persons
      @persons ||= ThemoviedbLib::Api::Person.new(@configs)
    end

    def reviews
      @reviews ||= ThemoviedbLib::Api::Review.new(@configs)
    end

    def searches
      @searches ||= ThemoviedbLib::Api::Search.new(@configs)
    end
  end
end
