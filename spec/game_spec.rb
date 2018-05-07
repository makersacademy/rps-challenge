describe Game do
  subject { described_class.instance }
  let(:player) { double :player, name: 'Will' }
  let(:computer) { double :computer, name: 'Computer' }

  before do
    subject.instance_variable_set(:@player_1, nil)
    subject.instance_variable_set(:@player_2, nil)
  end

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
      subject.player_1 = player
      expect(subject.player_1).to be player
    end

    it 'should be able to redefine player 2' do
      subject.player_2 = computer
      expect(subject.player_2).to eq computer
    end
  end

  context 'choosing a winner' do
    before do
      subject.player_1 = player
      subject.player_2 = computer
    end

    it 'selects winner for rock/scissors' do
      allow(player).to receive(:move).and_return(:rock)
      allow(computer).to receive(:move).and_return(:scissors)
      expect(subject.result).to eq 'Will wins!'
    end

    it 'selects winner for paper/rock' do
      allow(player).to receive(:move).and_return(:paper)
      allow(computer).to receive(:move).and_return(:rock)
      expect(subject.result).to eq 'Will wins!'
    end

    it 'selects winner for scissors/paper' do
      allow(player).to receive(:move).and_return(:scissors)
      allow(computer).to receive(:move).and_return(:paper)
      expect(subject.result).to eq 'Will wins!'
    end

    it 'selects winner for rock/rock' do
      allow(player).to receive(:move).and_return(:rock)
      allow(computer).to receive(:move).and_return(:rock)
      expect(subject.result).to eq "It's a draw!"
    end

    it 'selects winner for paper/paper' do
      allow(player).to receive(:move).and_return(:paper)
      allow(computer).to receive(:move).and_return(:paper)
      expect(subject.result).to eq "It's a draw!"
    end

    it 'selects winner for scissors/scissors' do
      allow(player).to receive(:move).and_return(:scissors)
      allow(computer).to receive(:move).and_return(:scissors)
      expect(subject.result).to eq "It's a draw!"
    end

    it 'selects winner for rock/paper' do
      allow(player).to receive(:move).and_return(:rock)
      allow(computer).to receive(:move).and_return(:paper)
      expect(subject.result).to eq 'Computer wins!'
    end

    it 'selects winner for paper/scissors' do
      allow(player).to receive(:move).and_return(:paper)
      allow(computer).to receive(:move).and_return(:scissors)
      expect(subject.result).to eq 'Computer wins!'
    end

    it 'selects winner for scissors/rock' do
      allow(player).to receive(:move).and_return(:scissors)
      allow(computer).to receive(:move).and_return(:rock)
      expect(subject.result).to eq 'Computer wins!'
    end
  end
end
