require 'computer_player'

describe ComputerPlayer do
  let(:computer) { described_class.new }

  it { is_expected.to respond_to(:weapon) }
end
