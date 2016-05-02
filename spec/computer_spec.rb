require 'computer'
require 'player'

describe Computer do
	it { expect(described_class).to be < Player}
end