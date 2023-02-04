require 'uri'
require 'typhoeus'
module ThemoviedbLib
  class HttpRequest # rubocop:disable Style/Documentation
    def initialize(base_url, token, endpoint)
      @base_url = base_url
      @token = token
      @endpoint = endpoint
    end

    def get(id)
      request(:get, id)
    end

    def request(method, uid = nil, params: {}, body: {}, verbose: false) # rubocop:disable Metrics/MethodLength
      body = body.to_h
      body = body.delete_if { |_k, v| v.nil? || v.to_s.empty? }
      body = body.empty? ? nil : body.json

      @response = Typhoeus::Request.new(
        parse_url(uid),
        method: method,
        params: fetch_params(params),
        body: body,
        headers: { 'Content-Type': 'application/json' },
        verbose: verbose
      ).run
    end

    private

    def parse_url(id)
      url = URI(@base_url + @endpoint).to_s
      url += "/#{id}" unless id.size.zero?
      url
    end

    def fetch_params(params)
      commom_atributes = { api_key: @token }

      commom_atributes.merge!(params)

      commom_atributes
    end
  end
end
