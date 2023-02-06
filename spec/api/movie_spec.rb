require_relative '../../lib/themoviedb_lib/api/movie'
require 'byebug'

RSpec.describe ThemoviedbLib::Api::Movie, type: :service do
  describe '#movie' do
    let(:credentails) do
      ThemoviedbLib::Models::ThemoviedbConfig.new('https://api.themoviedb.org/3',
                                                  'dc72e3b5-df78-4ec4-acc7-053e151bf90f')
    end

    let(:movie) do
      ThemoviedbLib::Api::Movie.new(credentails).credits(550)
    end

    it 'Validate keys in response', :vcr do
      expect(%w[id cast crew]).to eq(movie.keys)
    end
  end
end
