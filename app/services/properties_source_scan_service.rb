require "json"
require "open-uri"

class PropertiesSourceService

  attr_accessor :source_id

  def initialize(source_id)
    @source_id = source_id
  end

  def scan_source
    # Scan the source
    url = url
    content_serialized = URI.open(url).read
    content = JSON.parse(content_serialized)
end
