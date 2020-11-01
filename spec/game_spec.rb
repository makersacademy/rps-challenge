require 'game'

RSpec.describe Game do
  let(:player1) { double :player1, name: 'Test1', choice: 'rock' }
  let(:player2) { double :player2, name: 'Test2', choice: 'rock' }
  subject! { described_class.create(GameLogic, player1, player2) }

  it { is_expected.to respond_to :player1 }
  it { is_expected.to respond_to :player2 }

  describe 'Class level methods' do
    it ' #instance gives the class level instance' do
      expect(Game.instance).to be_an_instance_of(Game)
    end

    it 'returns the player object - test player1' do
      expect(Game.instance.player1).to eq player1
    end

    it 'returns the player object - test player2' do
      expect(Game.instance.player2).to eq player2
    end
  end

  describe 'able to create new Game object' do
    it '#player1 responds with the player object' do
      expect(subject.player1).to eq player1
    end

    it '#player2 responds with the player object' do
      expect(subject.player2).to eq player2
    end
  end

  describe 'able to return a winner' do
    it '#player1 wins' do
      allow(player1).to receive(:choice).and_return 'rock'
      allow(player2).to receive(:choice).and_return 'scissors'

      expect(subject.winner).to eq player1.name
    end

    it '#player2 wins' do
      allow(player1).to receive(:choice).and_return 'rock'
      allow(player2).to receive(:choice).and_return 'paper'

      expect(subject.winner).to eq player2.name
    end

    it '#draw' do
      allow(player1).to receive(:choice).and_return 'rock'
      allow(player2).to receive(:choice).and_return 'rock'

      expect(subject.winner).to eq 'It is a Draw!'
    end
  end
end
