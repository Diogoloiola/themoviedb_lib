require_relative '../http_request'

module ThemoviedbLib
  module Api
    class Trending < HttpRequest
      def initialize(configs)
        super(configs.base_url, configs.token, '/trending')
      end

      def get
        raise 'Empty endpoint'
      end

      def trending(media_type, time_window)
        request(:get, "#{media_type}/#{time_window}")
      end
    end
  end
end
