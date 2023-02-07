# frozen_string_literal: true

require_relative 'themoviedb_lib/version'
require_relative 'themoviedb_lib/api/movie'
require_relative 'themoviedb_lib/api/nextwork'
require_relative 'themoviedb_lib/api/trending'
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
  end
end
