# frozen_string_literal: true

require 'faraday'
require 'json'

module RickAndMorty
  class Connection
    BASE = 'https://rickandmortyapi.com/api/'

    def self.api(path)
      Faraday.new(
        url: "#{BASE}#{path}",
        params: { param: '1' },
        headers: { 'Content-Type' => 'application/json' }
      )
    end
  end
end
