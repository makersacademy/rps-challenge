feature 'Player chooses move' do
  it "has :rock button" do
    sign_in_and_play
    expect(page).to have_selector(:button, :rock)
  end

  it "has :paper button" do
    sign_in_and_play
    expect(page).to have_selector(:button, :paper)
  end

  it "has :scissors button" do
    sign_in_and_play
    expect(page).to have_selector(:button, :scissors)
  end

end

feature "show confirmation of player's move" do
  it "shows confirmation of player's move" do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content "You chose rock"
  end
end
