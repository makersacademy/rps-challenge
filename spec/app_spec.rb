require 'rps'

describe RPS do

  it "new instance of the class has a name" do
    game = RPS.new("test")
    expect(game.name).to eq("test")
  end

end
