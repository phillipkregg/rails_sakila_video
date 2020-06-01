# frozen_string_literal: true

require('faraday_middleware')
require('faraday')
require('pry')
require('json')

API_ROOT = 'https://rickandmortyapi.com/api/'

module RickAndMorty
  # Using explicit nesting
  class CharactersController < ApplicationController
    def index
      conn = Faraday.new(url: API_ROOT) do |faraday|
        faraday.adapter Faraday.default_adapter
        faraday.response :json
      end

      response = conn.get('character/')
      json_response = response.body.to_json
      # OpenStruct is very important!!! It allows you to be able to call properties (like name) on @characters in template
      @characters = JSON.parse(json_response, object_class: OpenStruct)['results']
    end

    def curl_get_example
      render html: 'Thanks for sending a GET request with cURL!'
    end

    def curl_post_example
      render html: "Thanks for sending a POST request with cURL! Payload: #{request.body.read}"
    end

    def create
      render json: params
    end
  end
end
