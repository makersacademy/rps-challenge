require 'player'

describe Player do

  before(:all) do
    srand(67809)
  end

  name = "Joe"
  random_choice = "Scissors"
  random_choice_advanced = "Paper"
  let(:player) {described_class.new(name)}
  let(:player_auto) {described_class.new("")}
  let(:choice) {double :choice}

  it 'can return the correct name' do
    expect(player.name).to eq name
  end

  it 'has an initial score of zero' do
    expect(player.score).to eq 0
  end

  it 'can increment score by 1' do
    expect{player.win}.to change{player.score}.by 1
  end

  it "stores the player's choice" do
    player.choice = choice
    expect(player.choice).to eq choice
  end

  it 'has a list of three choices for simple game' do
    expect(player.choices_simple.length).to eq 3
  end

  it 'has a list of five choices for advanced_rules game' do
    expect(player.choices_advanced.length).to eq 5
  end

  it 'expect player not to be automated if the name is set' do
    expect(player.automated?).to eq false
  end

  it 'expect player to be automated if no name is set' do
    expect(player_auto.automated?).to eq true
  end

  it 'gets a random choice for a simple game' do
      expect(player_auto.get_random_choice(0)).to eq random_choice
  end

  it 'gets a random choice for an advanced game' do
      expect(player_auto.get_random_choice(1)).to eq random_choice_advanced
  end

end
