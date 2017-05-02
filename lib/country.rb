
# Understands managing politicians...
class Country
  def self.default
    @actors = [:Trump, :Clinton]
  end

  def self.french
    @actors = [:Macron, :LePen]
  end

  def self.english
    @actors = [:Corbyn, :May]
  end

  def self.current
    @actors
  end
end
