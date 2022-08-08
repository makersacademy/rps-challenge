require 'round'

describe Round do 

  describe 'Player chooses paper' do
    subject(:round) { Round.new(player_weapon, Game.new)}
    let(:player_weapon) { 'paper' }
    let(:computer_weapon) { double :computer_weapon }
      it 'paper v paper draws' do
        srand(1) #returns computer weapon as paper
        # allow(round).to receive(:player_weapon).and_return('paper')
        allow(round).to receive(:computer_weapon)
        expect(subject.engine).to eq('draw')
      end

    it 'paper beats rock' do
      srand(2) #returns computer weapon as rock
      # allow(round).to receive(:player_weapon).and_return('paper')
      allow(round).to receive(:computer_weapon)
      expect(subject.engine).to eq('You chose wisely.')
    end

    it 'paper loses to scissors' do
      srand(3) #returns computer weapon as scissors
      # allow(round).to receive(:player_weapon).and_return('paper')
      allow(round).to receive(:computer_weapon)
      expect(subject.engine).to eq('You did not choose wisely.')
    end
  end

  describe 'Player chooses rock' do
    subject(:round) { Round.new(player_weapon, Game.new)}
    let(:player_weapon) { 'rock' }
    let(:computer_weapon) { double :computer_weapon }
      it 'rock v rock draws' do
        srand(2) #returns computer weapon as rock
        # allow(round).to receive(:player_weapon).and_return('paper')
        allow(round).to receive(:computer_weapon)
        expect(subject.engine).to eq('draw')
      end

    it 'rock loses to paper' do
      srand(1) #returns computer weapon as paper
      # allow(round).to receive(:player_weapon).and_return('paper')
      allow(round).to receive(:computer_weapon)
      expect(subject.engine).to eq('You did not choose wisely.')
    end

    it 'rock beats scissors' do
      srand(3) #returns computer weapon as scissors
      # allow(round).to receive(:player_weapon).and_return('paper')
      allow(round).to receive(:computer_weapon)
      expect(subject.engine).to eq('You chose wisely.')
    end
  end

  describe 'Player chooses scissors' do
    subject(:round) { Round.new(player_weapon, Game.new)}
    let(:player_weapon) { 'scissors' }
    let(:computer_weapon) { double :computer_weapon }
      it 'scissors v scissors draws' do
        srand(3) #returns computer weapon as scissors
        # allow(round).to receive(:player_weapon).and_return('paper')
        allow(round).to receive(:computer_weapon)
        expect(subject.engine).to eq('draw')
      end

    it 'scissors beats paper' do
      srand(1) #returns computer weapon as paper
      # allow(round).to receive(:player_weapon).and_return('paper')
      allow(round).to receive(:computer_weapon)
      expect(subject.engine).to eq('You chose wisely.')
    end

    it 'scissors loses to rock' do
      srand(2) #returns computer weapon as scissors
      # allow(round).to receive(:player_weapon).and_return('paper')
      allow(round).to receive(:computer_weapon)
      expect(subject.engine).to eq('You did not choose wisely.')
    end
  end
end
