require "player"

describe Player do
  subject(:player){described_class.new(opponent: computer)}
  let(:computer) {double :computer}

  scenario "draw"

end