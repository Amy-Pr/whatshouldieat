
#frozen_string_literal: true
require_relative "what_should_I_eat/version"
require 'http'
require 'json'

module WhatShouldIEat
  def WhatShouldIEat.fresh
    result = HTTP.get('https://www.edamam.com/search?type=Feeds').to_s
    recipes = JSON.parse(result)
    name = recipes.first['items'].first['label']
    url = recipes.first['items'].first['url']
    puts name
    puts url
  end
end
