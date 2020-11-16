require_relative '../../lib/game'

describe Game do

  let(:player) { double :Player }
  subject(:game) { described_class.new(player) }

  it 'creates an instance of the Gama class' do
    expect(game).to be_instance_of(Game)
  end

  context "#initialize" do
    it 'creates an opponent instance variable' do
      expect(game.opponent).to be_instance_of(Computer)
    end

    it 'creates a player instance variable' do
      expect(game.player).to eq(player)
    end
  end

  context '#winner' do
    it 'is called on an instance of Game' do
      expect(game).to respond_to(:winner)
    end

    it 'returns the user as the game\'s winner' do
      allow(player).to receive(:name).and_return("Constantine")
      allow(player).to receive_message_chain(:weapon, :retrieve_value => 0)
      allow(game.opponent).to receive_message_chain(:opponents_weapon, :retrieve_value => 2)
      expect(game.winner).to eq("The winner is Constantine!")
    end

    it 'returns the computer as the game\'s winner' do
      allow(player).to receive(:name).and_return("Constantine")
      allow(player).to receive_message_chain(:weapon, :retrieve_value => 0)
      allow(game.opponent).to receive_message_chain(:opponents_weapon, :retrieve_value => 1)
      expect(game.winner).to eq("The winner is the Computer!")
    end

    it 'returns that the game is a tie' do
      allow(player).to receive(:name).and_return("Constantine")
      allow(player).to receive_message_chain(:weapon, :retrieve_value => 0)
      allow(game.opponent).to receive_message_chain(:opponents_weapon, :retrieve_value => 0)
      expect(game.winner).to eq("It's a Tie!")
    end
  end
end