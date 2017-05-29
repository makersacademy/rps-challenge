require 'game'

describe Game do
  let(:charlotte) { Player.new("Charlotte") }
  subject(:game) { described_class.new(charlotte, Computer.new) }

  describe '#initialize' do
    it 'has a player' do
      expect(game.player.name).to eq "Charlotte"
    end
    it 'has a computer' do
      expect(game.computer.name).to eq "The Evil Computer"
    end
  end

  describe '#start' do
    it 'stores the Rock weapon for the player' do
      game.start("Rock")
      expect(game.player_weapon).to eq :rock
    end
    it 'stores the Paper weapon for the player' do
      game.start("Paper")
      expect(game.player_weapon).to eq :paper
    end
    it 'stores the scissors weapon for the player' do
      game.start("Scissors")
      expect(game.player_weapon).to eq :scissors
    end
    it 'puts an error message if a user tries to submit a non RPS weapon choice' do
      game.start("Skizzers")
      expect { game.start("Skizzers") }.to output(/I did not understand your weapon Skizzers/).to_stdout
    end
  end

  describe '#games_weapons' do
    it 'stores the player and computer weapons in an array' do
      rock_computer = double(:computer)
      allow(rock_computer).to receive(:weapon_choice).and_return(:rock)
      game = Game.new(charlotte, rock_computer)
      game.start("Paper")
      expect(game.games_weapons).to eq [:paper, :rock]
    end
  end

  describe '#outcome' do
    let(:rock_computer) do
      doubled = double(:computer)
      allow(doubled).to receive(:weapon_choice).and_return(:rock)
      allow(doubled).to receive(:name).and_return("The Evil Computer")
      doubled
    end

    subject(:game1) { Game.new(charlotte, rock_computer) }

    it 'returns the player name if the game has been won' do
      game1.start("Paper")
      expect(game1.outcome).to eq "Charlotte"
    end
    it 'returns a draw message & both names if a draw' do
      game1.start("Rock")
      expect(game1.outcome).to eq "No one! It's a draw for Charlotte and The Evil Computer"
    end
    it 'returns a draw message & both names if a draw' do
      game1.start("Scissors")
      expect(game1.outcome).to eq "The Evil Computer"
    end
  end

  describe '#save_game' do
    let(:rock_computer) do
      doubled = double(:computer)
      allow(doubled).to receive(:weapon_choice).and_return(:rock)
      allow(doubled).to receive(:name).and_return("The Evil Computer")
      doubled
    end

    subject(:game1) { Game.new(charlotte, rock_computer) }

    xit 'should create a filename and put name and game weapons in it' do
      game1.start("Paper")
      game1.outcome
      game1.save_game
      file = mock('.rps_game.csv') # update with actual name
      File.should_receive(:open).with("rps_game.csv", "w").and_yield(file) # add in with actual names
      file.should_receive(:write).with("text")
      "Charlotte"
    end
  end
end
