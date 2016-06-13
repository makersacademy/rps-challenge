class VirtualPlayer

OPTIONS = [:Rock,:Paper,:Scissor,:Spock,:Lizard]

attr_reader :name, :option

  def initialize(name="The Computer")
    @name = name
    @option = nil
  end

  def pick_play
    @option = OPTIONS.shuffle.sample
  end


end