require 'player'

describe Player do
  subject { Player.new(name) }
  let(:name) { 'Bob Ross' }
  let(:wins) { 2 }
  let(:losses) { 5 }

  it 'has a name' do
    expect(subject.name).to eq name
  end

  it 'initializes wins to zero' do
    expect(subject.wins).to eq 0
  end

  it 'initializes losses to zero' do
    expect(subject.losses).to eq 0
  end

  it 'has a method won which increments wins' do
    expect {
      wins.times do
        subject.won
      end
    }.to change {subject.wins}.from(0).to(wins)
  end

  it 'has a method loss which increments losses' do
    expect {
      losses.times do
        subject.loss
      end
    }.to change {subject.losses}.from(0).to(losses)
  end

  it 'has number of games played' do
    expect(subject.games_played).to eq(subject.wins + subject.losses)
  end

  describe 'random choices' do
    it 'can make a random choice to paper' do
      allow(Kernel).to receive(:rand).and_return 0
      expect(subject.make_random_choice).to eq :paper
    end

    it 'can make a random choice to scissors' do
      allow(Kernel).to receive(:rand).and_return 1
      expect(subject.make_random_choice).to eq :scissors
    end

    it 'can make a random choice to rock' do
      allow(Kernel).to receive(:rand).and_return 2
      expect(subject.make_random_choice).to eq :rock
    end
  end
end