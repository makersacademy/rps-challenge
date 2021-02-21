require 'rps'

describe RPS do
  let(:rockweapon) { double(:rockweapon, draw?: true) }
  let(:paper) { double(:paper) }
  let(:scissors) { double(:scissors) }
  let(:rock) { double(:rock) }
  let(:chrissy) { double(:chrissy) }
  let(:weaponclass) { double(:weaponclass, new: rockweapon) }
  subject(:game) { described_class.new(chrissy, weaponclass) }

  describe 'self.create' do
    it 'uses a class method to return an instance' do
      expect(RPS.create(chrissy)).to be_a RPS
    end
  end

  describe '#player' do
    it 'returns the player of the game' do
      expect(game.player).to eq chrissy
    end
  end

  describe 'self.instance' do
    it 'returns the class instance' do
      RPS.create(chrissy)
      expect(RPS.instance).to be_a RPS
    end
  end

  describe 'when player has made a choice' do
    it 'creates a new weapon from the choice' do
      expect(weaponclass).to receive(:new)
      subject.player_choose(rock)
    end

    context 'check the result with #result' do
      describe 'if it is a draw' do
        it 'returns a draw' do
          computer = double("computer", :type => rock)
          game = RPS.new(chrissy, weaponclass, computer)
          game.player_choose(rock)
          expect(game.result).to eq(:draw)
        end
      end
      describe 'if the player wins' do
        it 'returns a win' do
          computer = double("computer", :type => scissors)
          rockweapon = double(:rockweapon, :draw? => false, :beats? => true)
          weaponclass = double(:weaponclass, :new => rockweapon)
          game = RPS.new(chrissy, weaponclass, computer)
          game.player_choose(rock)
          expect(game.result).to eq(:win)
        end
      end
      describe 'if it is a loss' do
        it 'returns lose' do
          computer = double("computer", :type => paper)
          rockweapon = double(:rockweapon, :draw? => false, :beats? => false)
          weaponclass = double(:weaponclass, :new => rockweapon)
          game = RPS.new(chrissy, weaponclass, computer)
          game.player_choose(rock)
          expect(game.result).to eq(:lose)
        end
      end
    end
  end
end
