describe Comp do
  it 'inits with a random selection of rock, paper or scissors' do
    comp = Comp.new
    allow(comp).to receive(:comp_selection).and_return("Rock")
    expect(comp.comp_selection).to eq("Rock")
  end
end

describe Rules do
  it 'Will equal win, lose or draw according to selections' do
    rules = Rules.new
    expect(Rules::RULES[:Paper][:Rock]).to eq('win')
  end
end
