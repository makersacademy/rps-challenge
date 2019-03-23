# As a marketeer,
# So that I can enjoy myself away from the daily grind,
# I would like to be able to play rock/paper/scissors.

describe "Play" do
  it "displays button" do
    sign_in
    expect(page).to have_selector "button"
  end

  it "displays outcome of 'Rock' for player's turn" do
    sign_in
    click_button "play"
    expect(page).to have_content "Rock"
  end

  it "displays outcome of 'Paper' for player's turn" do
    # let(:turn) { double :turn }
    # allow(turn).to_receive(:result) { "Rock" }
    sign_in
    click_button "play"
    expect(page).to have_content "Paper"
  end
end