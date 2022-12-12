# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# testing:
require "nokogiri"
require "open-uri"

# class PropertiesSourceService

  # attr_accessor :list_url

  # def initialize(list_url)
  #   @list_url = list_url
  # end

def scan_source(list_url)

  properties = Array.new

  html_file = URI.parse(list_url).open

  page = Nokogiri::HTML(html_file)

  result_properties = page.css('div.result_box')
  result_properties.each do |property|
    property = {
      # title: property.css('a').text.split('　')[0],
      link_id: property.css('a')[0].attributes["href"].value.scan(/\d+/).first
    }
    properties.push(property)
  end
  puts properties
end

# end

list_url = "https://www.city.ueda.nagano.jp/akiyabank/search.php?hid_flg_search=1&&k_syozaichi%5B%5D=1&k_syozaichi%5B%5D=2&k_syozaichi%5B%5D=3&k_syozaichi%5B%5D=4&k_syozaichi%5B%5D=5&k_syozaichi%5B%5D=0&page=1"
scan_source(list_url)
