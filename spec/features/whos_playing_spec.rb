feature "Allows user to select single player or mulitplayer" do
  scenario "Asks user how if they want to play single or multiplayer" do
    visit('/')
    expect(page).to have_content 'Play vs. Computer or a friend?'
  end


  scenario "displays single player button" do
    visit('/')
    expect(page).to have_button('Single Player')
  end

  scenario "displays Multiplayer button" do
    visit('/')
    expect(page).to have_button('Multiplayer')
  end
end
