require "json"
require "open-uri"

class PropertyScanService

  attr_accessor :source_id

  def initialize(source_id)
    @source_id = source_id
  end

  def scan_source
    # Scan the property
    content_serialized = URI.open(url).read
    content = JSON.parse(content_serialized)
    return content
  end
end
