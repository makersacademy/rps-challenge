require 'game'

describe Game do

  let(:choice) { double(:choice) }
  let(:computer_choice) { double(:computer_choice) }

  describe '#worker_outer' do
    it 'expects tie when choices are the same' do
    expect(subject.worker_outer)
  end
  end
end
