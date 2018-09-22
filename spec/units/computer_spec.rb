require './app/models/computer'

describe Computer do
  it { expect(described_class).to be < Player }

  it '@name is set to "Computer"' do
    expect(subject.name).to eq("Computer")
  end
end
