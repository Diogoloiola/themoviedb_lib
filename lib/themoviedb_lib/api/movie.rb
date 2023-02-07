require_relative '../http_request'

module ThemoviedbLib
  module Api
    class Movie < HttpRequest
      def initialize(configs)
        super(configs.base_url, configs.token, '/movie')
      end

      def credits(id, params: {})
        request(:get, "#{id}/credits", params: params)
      end

      def account_states(id, params: {})
        request(:get, "#{id}/account_states", params: params)
      end

      def alternative_titles(id, params: {})
        request(:get, "#{id}/alternative_titles", params: params)
      end

      def changes(id, params)
        request(:get, "#{id}/changes", params: params)
      end

      def external_ids(id)
        request(:get, "#{id}/external_ids")
      end

      def images(id, params: {})
        request(:get, "#{id}/images", params: params)
      end

      def keywords(id)
        request(:get, "#{id}/keywords")
      end

      def lists(id, params: {})
        request(:get, "#{id}/lists", params: params)
      end

      def recommendations(id)
        request(:get, "#{id}/recommendations")
      end

      def release_dates(id)
        request(:get, "#{id}/release_dates")
      end

      def reviews(id, params: {})
        request(:get, "#{id}/reviews", params: params)
      end

      def similar(id, params: {})
        request(:get, "#{id}/similar", params: params)
      end

      def translations(id)
        request(:get, "#{id}/translations")
      end

      def videos(id, params: {})
        request(:get, "#{id}/videos", params: params)
      end

      def watch_providers(id)
        request(:get, "#{id}/watch/providers")
      end

      def create_rating(id, body)
        request(:post, "#{id}/rating", body: body)
      end

      def delete_rating(id)
        request(:delete, "#{id}/rating")
      end

      def now_playing(params: {})
        request(:get, 'now_playing', params: params)
      end

      def latest(params: {})
        request(:get, 'latest', params: params)
      end

      def top_rated(params: {})
        request(:get, 'top_rated', params: params)
      end

      def upcoming(params: {})
        request(:get, 'upcoming', params: params)
      end
    end
  end
end
