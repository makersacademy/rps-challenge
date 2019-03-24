module HTMLBuilder

  def self.array_to_list(array)
    html_builder = "<ol>"
    array.each do |item|
      html_builder += "<li>#{item}</li>"
    end
    html_builder += "</ol>"
  end
end
