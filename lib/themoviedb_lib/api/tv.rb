require_relative '../http_request'

module ThemoviedbLib
  module Api
    class Tv < HttpRequest
      def initialize(configs)
        super(configs.base_url, configs.token, '/tv')
      end

      def account_states(id, params: {})
        request(:get, "#{id}/account_states", params: params)
      end

      def aggregate_credits(id, params: {})
        request(:get, "#{id}/aggregate_credits", params: params)
      end

      def alternative_titles(id, params: {})
        request(:get, "#{id}/alternative_titles", params: params)
      end

      def changes(id, params: {})
        request(:get, "#{id}/changes", params: params)
      end

      def content_ratings(id)
        request(:get, "#{id}/content_ratings")
      end

      def credits(id)
        request(:get, "#{id}/credits")
      end
    end
  end
end
