require 'game'

describe Game do

  it "responds to player 2 chooses" do
    expect(subject).to respond_to(:player2_chooses)
  end

end
