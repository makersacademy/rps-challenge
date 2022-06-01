### User Stories

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

### Routes

````ruby
get "/" do
  # registration page
end

post "/name" do
  # processes the names and redirects
end

get "/play" do
  # user sees their name here
  # game play happens here
  # user selects their weapon
end

post "/result" do
  # takes the weapon choice that was selected
  # selects the correct erb dependng on the result
end

get "/win" do
  # winner page
end

get "/draw" do
  # page for draws
end

get "/lose" do
  # page for losing
end

````

### Classes

````ruby
class App
  # stores the routes etc
end

class Player
  attr_reader :name
  attr_accessor :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end
end

class Computer
  def weapon
    # sample from the GAMES::WEAPONS array
  end
end

class Game
attr_reader :players
  def initialize(player_1, player_2)
    # weapons constant
    # rules constant
    # players array
  end

  def player_1
  end

  def player_2
  end

  def result
    # returns a symbol for selecting correct erb
    # based on the players weapons
  end
end
````

### Unit tests

````ruby
# Game
describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :computer }

    it "returns the players" do
      expect(game.players).to eq [player_1, player_2]
      expect(game.player_1).to eq player_1
      expect(game.player_1).to eq player_2
    end

    it "returns win if player_1 wins"
      allow(player_1).to receive(weapon).and_return(:rock)
      allow(player_2).to receive(weapon).and_return(:scissors)
      expect(game.result).to eq :win
    end

    it "returns lose if player_1 wins"
      allow(player_1).to receive(weapon).and_return(:rock)
      allow(player_2).to receive(weapon).and_return(:paper)
      expect(game.result).to eq :lose
    end

    it "returns draw if a draw"
      allow(player_1).to receive(weapon).and_return(:rock)
      allow(player_2).to receive(weapon).and_return(:rock)
      expect(game.result).to eq :draw
    end

    # Player
    describe Player do
      subject(:player) { described_class.new("Rosie") }
      
      it "constructs and returns name" do
        expect(player.name).to eq "Rosie"
      end

      it "can have a weapon assigned to it" do
        game.weapon == :rock
        expect(game.weapon).to eq :rock
      end
    end

    # Computer
    describe Computer do
      subject(:player) { described_class.new("Rosie") }

      it "randomly selects a weapon" do # not entirely sure this will work
        expect(computer.weapon).to eq :paper
        computer.weapon
      end
    end
````

### Features tests

````ruby
# displays name

# selects a weapon

# shows the correct screen depending on who won
````

