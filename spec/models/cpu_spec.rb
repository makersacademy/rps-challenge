require './models/cpu.rb'

describe Cpu do

  describe '#move' do

    it 'should store this in cpu\'s move' do
      subject.select_move("Paper")
      expect(subject.move).to eq("Paper")
    end
  end
end
