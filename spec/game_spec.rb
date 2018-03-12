# Game class spec file
describe Game do
  let(:p1) { double :adam, name: 'Adam', choice: 'rock' }
  let(:p2) { double :p2, name: 'Simon', choice: 'paper' }
  subject(:game) { described_class.new(p1, p2) }

  describe '#new' do
    it 'should initialise Game object with p1 and p2' do
      expect(game.p1).to eq(p1)
      expect(game.p2).to eq(p2)
    end
  end

  describe 'Access p1s name' do
    it 'Should should have access to p1s name' do
      expect(game.p1.name).to eq(p1.name)
    end
  end

  describe '#self.create' do
    it 'Should return an instance of Game class' do
      expect(Game.create(p1, p2)).to be_instance_of(Game)
    end
  end

  describe '#self.instance ' do
    it 'should return an instance of Game' do
      expect(Game.instance).to be_instance_of(Game)
    end
  end

  describe '#alert_type' do
    it 'should return alert-danger in case of (loss)' do
      expect(game.alert_type).to eq('alert-danger')
    end

    it 'should return alert-success in case of (loss)' do
      winning_game = Game.new(p2, p1)
      expect(winning_game.alert_type).to eq('alert-success')
    end

    it 'should return alert-info in case of (loss)' do
      draw_game = Game.new(p1, p1)
      expect(draw_game.alert_type).to eq('alert-info')
    end
  end

  describe '#result' do
    it 'should return You Lose message' do
      expect(game.result).to eq('You Lose!')
    end

    it 'should return You Lose message' do
      winning_game = Game.new(p2, p1)
      expect(winning_game.result).to eq('You Won!')
    end

    it 'should return Draw message' do
      draw_game = Game.new(p1, p1)
      expect(draw_game.result).to eq("It's a Draw!")
    end
  end

end
