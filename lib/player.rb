class Player
  @@images = {
    Spock: "images/spock.jpg",
    lizard: "images/lizard.jpg",
    paper: "images/paper.jpg",
    rock: "images/rock.jpg",
    scissors: "images/scissors.jpg",
  }

  attr_reader :name, :choice, :image

  def initialize(player)
    @name = player[:name]
    @choice = player[:rps]
    @image = @@images[@choice.to_sym]
  end
end
