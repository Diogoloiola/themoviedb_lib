require_relative '../http_request'

module ThemoviedbLib
  module Api
    class Review < HttpRequest
      def initialize(configs)
        super(configs.base_url, configs.token, '/review')
      end
    end
  end
end
