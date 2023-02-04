require_relative '../http_request'

module ThemoviedbLib
  module Api
    class Movie < HttpRequest
      def initialize(configs)
        super(configs.base_url, configs.token, '/movie')
      end
    end
  end
end
