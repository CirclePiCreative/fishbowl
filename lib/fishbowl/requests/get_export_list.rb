module Fishbowl::Requests
  def self.get_export_list
    _, _, response = Fishbowl::Objects::BaseObject.new.send_request('ExportListRq', 'ExportListRs')

    results = []
    # response.xpath("//ExportName").each do |xml|
    #   results << Fishbowl::Objects::Export.new(xml)
    # end

    results
  end
end
