# frozen_string_literal: true

module RickAndMorty
  # Use explicit nesting - https://github.com/rubocop-hq/ruby-style-guide#namespace-definition
  class Character < ApplicationRecord
    match '/curl_example' => 'request_example#curl_get_example', via: :get
    match '/curl_example' => 'request_example#curl_post_example', via: :post
  end
end
