describe Game do

  describe '#initialize' do
    context 'this array is used to randomnly generates value' do
      it 'should return an empty array by default' do
        expect(subject.rps_computer.length).to eq 0
      end

      it 'should return an array containing rock / paper or scissors' do
        expect(subject.rps.length).to eq 3
      end
    end
  end

  describe '#compare' do
    context 'this array stores a randomnly generated value' do
      it 'should return an array with rock, paper or scissors' do
        subject.compare("rock")
        expect(subject.rps_computer.length).to eq 1
      end
    end

    context 'this array stores the randomnly generated element' do
      it 'should return an array with rock' do
        allow_any_instance_of(Array).to receive(:sample).and_return('rock')
        subject.compare("rock")
        expect(subject.rps_computer.first).to eq 'rock'
      end
    end

    context 'when player 1 wins' do
      it 'should store the result as a win' do
        allow_any_instance_of(Array).to receive(:sample).and_return('rock')
        subject.compare("paper")
        expect(subject.result.to_s).to eq 'win'
      end
    end

    context 'when player loses' do
      it 'should store the result as a win' do
        allow_any_instance_of(Array).to receive(:sample).and_return('rock')
        subject.compare("scissors")
        expect(subject.result.to_s).to eq 'lost'
      end
    end

    context 'when player draws' do
      it 'should store the result as a draw' do
        allow_any_instance_of(Array).to receive(:sample).and_return('rock')
        subject.compare("rock")
        expect(subject.result.to_s).to eq 'draw'
      end
    end
  end
end
