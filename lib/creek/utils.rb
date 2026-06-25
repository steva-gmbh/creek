# frozen_string_literal: true

module Creek
  module Utils
    def expand_to_rels_path(filepath)
      filepath.sub(%r{(/[^/]+$)}, '/_rels\1.rels')
    end

    def file_exist?(path)
      @book.files.file.exist?(path)
    end

    def parse_xml(xml_path)
      @book.files.file.open(xml_path) do |doc|
        Nokogiri::XML::Document.parse(doc)
      end
    end
  end
end
