require_relative '../http_request'

module ThemoviedbLib
  module Api
    class Search < HttpRequest
      def initialize(configs)
        super(configs.base_url, configs.token, '/search')
      end

      def company(params: {})
        request(:get, 'company', params: params)
      end

      def collection(params: {})
        request(:get, 'collection', params: params)
      end

      def keyword(params: {})
        request(:get, 'keyword', params: params)
      end

      def movie(params: {})
        request(:get, 'movie', params: params)
      end

      def multi(params: {})
        request(:get, 'multi', params: params)
      end

      def person(params: {})
        request(:get, 'person', params: params)
      end

      def tv(params: {})
        request(:get, 'tv', params: params)
      end
    end
  end
end
