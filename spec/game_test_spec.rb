require './lib/game'
describe Game do
  it "should create an instance of the game class" do
    game = Game.new("eggs", "Rebecca")
    expect(game).to be_an_instance_of(Game)
  end




it 'should return a random choice' do
  game = Game.new("ROCK", "Rebecca")
  expect(game.computers_choice).to eq("ROCK").or eq("PAPER").or eq("STONE")
end
end
