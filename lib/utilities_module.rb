module Utilities
  def titleize(name)
    name.split(/ |\_/).map(&:capitalize).join(" ")
  end
end
