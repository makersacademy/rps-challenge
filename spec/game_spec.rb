describe Game do

  subject(:game) { described_class.new('Mat') }

  context 'choices' do
    it "initializes with variable set to nil" do
      expect(game.choice).to eq nil
    end

    it "can be set to Rock" do
      expect{game.choose_rock}.to change{game.choice}.to eq 'Rock'
    end

    it "can be set to Paper" do
      expect{game.choose_paper}.to change{game.choice}.to eq 'Paper'
    end

    it "can be set to Scissors" do
      expect{game.choose_scissors}.to change{game.choice}.to eq 'Scissors'
    end
  end

  context 'NPC' do
    it 'chooses Rock when 0 is generated' do
      allow(game).to receive(:random_value).and_return 0
      game.choose_rock
      expect(game.computer_choice).to eq 'Rock'
    end

    it 'chooses Paper when 1 is generated' do
      allow(game).to receive(:random_value).and_return 1
      game.choose_rock
      expect(game.computer_choice).to eq 'Paper'
    end

    it 'chooses Scissors when 2 is generated' do
      allow(game).to receive(:random_value).and_return 2
      game.choose_rock
      expect(game.computer_choice).to eq 'Scissors'
    end
  end

  context 'drawing' do
    it "if both players choose rock" do
      allow(game).to receive(:random_value).and_return 0
      game.choose_rock
      expect(game.draw?).to eq true
    end

    it 'if both players choose paper' do
      allow(game).to receive(:random_value).and_return 1
      game.choose_paper
      expect(game.draw?).to eq true
    end

    it 'if both players choose scissors' do
      allow(game).to receive(:random_value).and_return 2
      game.choose_scissors
      expect(game.draw?).to eq true
    end
  end

  context 'wins' do
    it 'when player chooses rock and npc chooses scissors' do
      allow(game).to receive(:random_value).and_return 2
      game.choose_rock
      expect(game.winning?).to eq true
    end

    it 'when player chooses paper and npc chooses rock' do
      allow(game).to receive(:random_value).and_return 0
      game.choose_paper
      expect(game.winning?).to eq true
    end

    it 'when player chooses scissors and npc chooses paper' do
      allow(game).to receive(:random_value).and_return 1
      game.choose_scissors
      expect(game.winning?).to eq true
    end
  end

  context 'lose' do
    it 'when player chooses rock and npc chooses paper' do
        allow(game).to receive(:random_value).and_return 1
        game.choose_rock
        expect(game.winning?).to eq false
    end

    it 'when player chooses paper and npc chooses scissors' do
        allow(game).to receive(:random_value).and_return 2
        game.choose_paper
        expect(game.winning?).to eq false
    end

    it 'when player chooses scissors and npc chooses rock' do
        allow(game).to receive(:random_value).and_return 0
        game.choose_scissors
        expect(game.winning?).to eq false
    end
  end
end
