require_relative '../../lib/player'

describe Player do
  subject{Player.new("Chuan Cheng")}

  it "- contains attribute 'name'" do
    expect(subject).to have_attributes(:name => 'Chuan Cheng')
  end
end
