require 'papers_game'

describe PapeRSGame do
  let(:player) { Player.new }

  it 'can select a choice from p,r,s' do
    allow(subject).to receive(:plays).and_return 'p'
  end
end
