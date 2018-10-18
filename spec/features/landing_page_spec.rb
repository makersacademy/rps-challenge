feature "landing_page" do
  before { visit '/' }

  it "contains title" do
    expect(page).to have_content("Rock, Paper, Scissors")
  end

  it "contains 'Single Player' button" do
    expect(page).to have_selector(:button, "Single Player")
  end

  it "contains 'Multiplayer' button" do
    expect(page).to have_selector(:button, "Multiplayer")
  end
end
