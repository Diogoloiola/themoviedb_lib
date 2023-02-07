require_relative '../http_request'

module ThemoviedbLib
  module Api
    class Network < HttpRequest
      def initialize(configs)
        super(configs.base_url, configs.token, '/network')
      end

      def get
        raise 'Empty endpoint'
      end

      def details(id)
        request(:get, id)
      end

      def alternative_names(id)
        request(:get, "#{id}/alternative_names")
      end

      def images(id)
        request(:get, "#{id}/images")
      end
    end
  end
end
