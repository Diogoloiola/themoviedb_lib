# frozen_string_literal: true

require_relative 'themoviedb_lib/version'
require_relative 'themoviedb_lib/api/movie'
require_relative 'themoviedb_lib/models/credentials'
module ThemoviedbLib
  class ThemoviedbClient
    def initialize(configs)
      @configs = configs
    end

    def movies
      @movies ||= ThemoviedbLib::Api::Movie.new(@configs)
    end
  end
end
