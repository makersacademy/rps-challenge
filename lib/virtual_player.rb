class VirtualPlayer

OPTIONS = ["Rock","Paper","Scissor"]

attr_reader :name, :option

  def initialize(name="Computer")
    @name = name
    @option = nil
  end

  def pick_play
    @option = OPTIONS.shuffle.sample
  end


end