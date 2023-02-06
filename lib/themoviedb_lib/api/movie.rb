require_relative '../http_request'

module ThemoviedbLib
  module Api
    class Movie < HttpRequest
      def initialize(configs)
        super(configs.base_url, configs.token, '/movie')
      end

      def credits(id)
        request(:get, "#{id}/credits")
      end

      def account_states(id)
        request(:get, "#{id}/account_states")
      end

      def alternative_titles(id)
        request(:get, "#{id}/alternative_titles")
      end

      def changes(id)
        request(:get, "#{id}/changes")
      end

      def external_ids(id)
        request(:get, "#{id}/external_ids")
      end

      def images(id)
        request(:get, "#{id}/images")
      end

      def keywords(id)
        request(:get, "#{id}/keywords")
      end

      def lists(id)
        request(:get, "#{id}/lists")
      end

      def recommendations(id)
        request(:get, "#{id}/recommendations")
      end

      def release_dates(id)
        request(:get, "#{id}/release_dates")
      end

      def reviews(id)
        request(:get, "#{id}/reviews")
      end

      def similar(id)
        request(:get, "#{id}/similar")
      end

      def translations(id)
        request(:get, "#{id}/translations")
      end

      def videos(id)
        request(:get, "#{id}/videos")
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

      def latest
        request(:get, '/latest')
      end

      def now_playing
        request(:get, '/now_playing')
      end

      def top_rated
        request(:get, '/top_rated')
      end

      def upcoming
        request(:get, '/upcoming')
      end
    end
  end
end
