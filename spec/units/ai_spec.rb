require './lib/ai'

describe Ai do
  let(:weapon) { :rock }
  subject = Ai.new

  it 'creates an instance of Ai' do
      expect(subject).to be_instance_of Ai
  end

  it 'ai receives chosen_weapon' do
    allow(subject).to receive(:chosen_weapon)
    subject.chosen_weapon(:rock)
    expect(subject).to have_received(:chosen_weapon)
  end

end 