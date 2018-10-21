class User

  attr_reader :name, :automated

  def initialize(name, automated = false)
    @name = name
    @automated = automated
  end

end
