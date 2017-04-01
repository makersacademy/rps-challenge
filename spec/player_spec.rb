require 'player'

describe Player do
  subject(:ed) {described_class.new('Ed')}

  expect(ed).to respond_to name
end
