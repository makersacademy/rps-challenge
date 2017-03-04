class Bot

attr_reader :name, :selection

  def initialize(name = "PlayBOT")
    @name = name
    @selection = ['rock','paper','scissors'].sample
  end

end
