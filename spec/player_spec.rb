require "player"

describe Player do
  subject{ described_class.new('Jake') }
  
  it "remembers its name" do
    expect(subject.name).to eq 'Jake'
  end

end