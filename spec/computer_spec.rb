require_relative '../app/lib/computer'

describe Computer do
  it "returns a random key from hash" do
    result = {}
    200.times { result[Computer.new.choice] = 0 }
    expect(result.keys.count).to eq 3
  end

  it "#choice returns a RPS symbol option" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:Paper)
    expect(subject.choice).to eq :Paper
  end
end
