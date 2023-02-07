require_relative '../http_request'

module ThemoviedbLib
  module Api
    class Person < HttpRequest
      def initialize(configs)
        super(configs.base_url, configs.token, '/person')
      end

      def changes(id, params: {})
        request(:get, "#{id}/changes", params: params)
      end

      def movie_credits(id, params: {})
        request(:get, "#{id}/movie_credits", params: params)
      end

      def tv_credits(id, params: {})
        request(:get, "#{id}/tv_credits", params: params)
      end

      def combined_credits(id, params: {})
        request(:get, "#{id}/combined_credits", params: params)
      end

      def external_ids(id, params: {})
        request(:get, "#{id}/external_ids", params: params)
      end

      def images(id, params: {})
        request(:get, "#{id}/images", params: params)
      end

      def tagged_images(id, params: {})
        request(:get, "#{id}/tagged_images", params: params)
      end

      def translations(id, params: {})
        request(:get, "#{id}translations", params: params)
      end

      def latest(params: {})
        request(:get, 'latest', params: params)
      end

      def popular(params: {})
        request(:get, 'popular', params: params)
      end
    end
  end
end
