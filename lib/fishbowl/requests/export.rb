module Fishbowl::Requests
  def self.export(options = {})
    options = options.symbolize_keys

    request = format_export_request(options)
    Fishbowl::Objects::BaseObject.new.send_request(request, 'FbiMsgsRs')
  end

private

  def self.format_export_request(options)
    Nokogiri::XML::Builder.new do |xml|
      xml.request {
        xml.ExportRq {
          xml.Type options[:type]
        }
      }
    end
  end

end
