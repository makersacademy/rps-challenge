require './lib/game'
describe Game do
  it "should create an instance of the game class" do
    game = Game.new("eggs", "Rebecca")
    expect(game).to be_an_instance_of(Game)
  end


  it 'should return a random choice' do
    game = Game.new("ROCK", "Rebecca")
    game.choice_set
    expect(game.cchoice).not_to eq(nil)
  end

  it 'should recognise the input and put it in a variable' do
    game = Game.new("ROCK", "Rebecca")
    expect(game.rpschoice).to eq "ROCK"
  end

  it 'should expect there to be a winner' do
    game = Game.new("ROCK", "Rebecca")
    game.compare
    expect(game.winner).not_to eq(nil)
  end

  it 'should find a generated computer choice' do
    game = Game.new("ROCK", "Rebecca")
    game.compare
    expect(game.cchoice).not_to eq(nil)

  end

it 'should return the correct result' do
  game = Game.new("ROCK", "Rebecca")
  allow(game).to receive(:computers_choice) { "ROCK" }
  game.compare
  expect(game.winner).to eq "Nobody"
end

it 'should return the correct result' do
  game = Game.new("ROCK", "Rebecca")
  allow(game).to receive(:computers_choice) { "SCISSORS" }
  game.compare
  expect(game.winner).to eq "Rebecca"
end

it 'should realise when the computer wins' do
  game = Game.new("PAPER", "Rebecca")
  allow(game).to receive(:computers_choice) {"SCISSORS"}
  game.compare
  expect(game.winner).to eq "Computer"
end
end

describe Gamemultiple do
  it 'should recognise a draw' do
  game = Gamemultiple.new("ROCK", "ROCK", "Rebecca", "Adam")
  game.compare
  expect(game.winner).to eq "Nobody"
end

it 'should pick the correct winner' do
game = Gamemultiple.new("ROCK", "SCISSORS", "Rebecca", "Adam")
game.compare
expect(game.winner).to eq "Rebecca"
end
end
