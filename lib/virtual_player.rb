class VirtualPlayer

Options = ["Rock","Paper","Scissor"]

attr_reader :name, :option

  def initialize(name="Computer")
    @name = name
    @option = nil
  end

  def pick_play
    @option = Options.shuffle.sample
  end


end