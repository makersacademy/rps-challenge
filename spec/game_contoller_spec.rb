require 'game_controller'

describe GameController do

  describe '#new' do
    let(:player_name) { double }
    let(:game_logic) { double }
    subject(:game_controller) { described_class.new(player_name,game_logic) }

    it 'player number is set to nil' do
      expect(subject.player_num).to eq(nil)
    end

    it 'opponent number is set to nil' do
      expect(subject.opponent_num).to eq(nil)
    end

    it 'match outcome is set to nil' do
      expect(subject.match_outcome).to eq(nil)
    end

    it 'first parameter is set to player name' do
      expect(subject.player_name).to eq(player_name)
    end

  end

  describe '#choose_player_num' do
    let(:player_name) { double }
    let(:game_logic) { double }
    subject(:game_controller) { described_class.new(player_name,game_logic) }

    it 'player number is set by parameter' do
      expect{ subject.choose_player_num(3) }.to change{ subject.player_num }.from(nil).to(3)
    end

  end

  describe '#choose_opponent_num' do
    let(:player_name) { double }
    let(:game_logic) { double }
    subject(:game_controller) { described_class.new(player_name,game_logic) }

    it 'opponent number is set randomly' do
      srand(4)
      expect{ subject.choose_opponent_num }.to change{ subject.opponent_num }.from(nil).to(2)
    end

  end

  describe '#play' do
    let(:player_name) { double }
    let(:game_logic) { double :calculate_win => :outcome }
    subject(:game_controller) { described_class.new(player_name,game_logic) }

    it 'calls choose_opponent_num' do
      expect(subject).to receive(:choose_opponent_num)
      subject.play
    end

    it 'assigns match outcome to calculate win' do
      subject.choose_player_num(0)
      subject.play
      expect(subject.match_outcome).to eq(:outcome)
    end

  end

  describe '#self.create_instance / #self.return_instance' do
    let(:player_name) { double }
    let(:game_logic) { double }
    subject(:game_controller_class) { described_class }

    it 'can store an inside of the class within the class itself' do
      subject.create_instance(player_name,game_logic)
      expect(subject.return_instance).to be_an_instance_of( GameController )
    end

  end

end
