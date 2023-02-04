# frozen_string_literal: true

module ThemoviedbLib
  module Models
    class ThemoviedbConfig
      attr_accessor :base_url, :token

      def initialize(base_url, token)
        @base_url = base_url
        @token = token
      end
    end
  end
end
