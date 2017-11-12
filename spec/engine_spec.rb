require 'engine'

describe Engine do
  subject(:engine) { Engine.new }

  before do
  @pairs = [["rock", "scissors"],
            ["paper", "rock"],
            ["scissors", "paper"]]
  end

  context 'Draw' do
    it 'Returns draw and engine play for all draw scenarios' do
      @pairs.each do |play|
        allow_any_instance_of(Array).to receive(:sample) { play[0].to_sym }
        expect(engine.new_play(play[0])).to eq [:draw, play[0].to_sym]
      end
    end
  end

  context 'Win' do
    it 'Returns draw and engine play for all win scenarios' do
      @pairs.each do |play|
        allow_any_instance_of(Array).to receive(:sample) { play[1].to_sym }
        expect(engine.new_play(play[0])).to eq [:win, play[1].to_sym]
      end
    end
  end

  context 'Lose' do
    it 'Returns draw and engine play for all win scenarios' do
      @pairs.each do |play|
        allow_any_instance_of(Array).to receive(:sample) { play[0].to_sym }
        expect(engine.new_play(play[1])).to eq [:lose, play[0].to_sym]
      end
    end
  end
end

