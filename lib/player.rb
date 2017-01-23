class Player
  attr_reader :name, :status

  def initialize(name)
    @name = name
  end

  def status_change(status)
    @status = status
  end

  def reset
    @status = nil
  end

end
