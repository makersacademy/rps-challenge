require 'player'

describe Player do

  let(:player){Player.new}
  let(:rock){double(:rock)}
  let(:paper){double(:paper)}
  let(:scissors){double(:scissors)}
  let(:rock_class){double(:rock_class, :new => rock)}
  let(:paper_class){double(:paper_class, :new => paper)}
  let(:scissors_class){double(:scissors_class, :new => scissors)}

  it 'can have a current selection' do
    player.current_selection = rock
    expect(player.current_selection).to eq rock
  end

  it 'can have a name' do
    player.name = "Billy"
    expect(player.name).to eq "Billy"
  end

  describe '#random_selector' do

    it 'randomly assigns an option to the players current_selection' do
      allow(player).to receive(:weapons){[rock_class, paper_class, scissors_class]}
      srand 123
      random_choice = [rock, paper, scissors][rand(2)]
      srand 123
      player.random_selector
      expect(player.current_selection).to eq random_choice
    end

  end

end