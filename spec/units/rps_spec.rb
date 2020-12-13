require './lib/rps'

describe RPS do
  let(:player) { :player}
  let(:ai) { :ai }

  it 'creates an instance of RPS' do
      expect(RPS.new(player)).to be_instance_of RPS
  end

  it 'has 1 player' do
      expect(RPS).to respond_to(:new).with(1).argument
  end

end