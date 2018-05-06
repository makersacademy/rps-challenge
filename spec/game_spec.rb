describe Game do
  subject { described_class.instance }
  let(:first_player) { double :player }
  let(:second_player) { double :player }
  let(:computer) { double :computer }

  it 'should be a singleton' do
    expect(described_class.instance).to be_an_instance_of(described_class)
    expect { described_class.new }.to raise_error("private method `new' called for Game:Class")
  end

  context 'single player' do
    it 'should initialize with no player 1' do
      expect(subject.player_1).to be nil
    end

    it 'should initialize with no player 2' do
      expect(subject.player_2).to be nil
    end

    it 'should be able to redefine player 1' do
      subject.player_1 = first_player
      expect(subject.player_1).to be first_player
    end

    it 'should be able to redefine player 2' do
      subject.player_2 = computer
      expect(subject.player_2).to eq computer
    end
  end
end
