class Bot

attr_reader :name, :selection

  def initialize(name = "PlayBOT", selection = ['rock','paper','scissors', 'spock', 'lizard'])
    @name = name
    @selection = selection.sample
  end

end
