feature "game page" do
  before { enter_name }

  it "shows player names" do
    expect(page).to have_content("Dog vs Computer")
  end

  it "invites player to choose weapon" do
    expect(page).to have_content("Dog, choose your weapon!")
  end

  it "has 'Rock' button'" do
    expect(page).to have_selector(:button, "Rock")
  end

  it "has 'Paper' button'" do
    expect(page).to have_selector(:button, "Paper")
  end

  it "has 'Scissors' button'" do
    expect(page).to have_selector(:button, "Scissors")
  end

end
