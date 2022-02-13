feature "selecting single or 2 player game" do
  scenario "buttons for single or 2 player are displayed" do
    visit('/')
    expect(page).to have_button('vs. Computer')
    expect(page).to have_button('vs. Human')
  end

  scenario "game vs computer is selected" do
    visit('/')
    click_button("computer")
    expect(page).to have_content('Please enter your name:')
  end

  scenario "game vs human is selected" do
    visit('/')
    click_button("human")
    expect(page).to have_content('Please enter your names:')
  end

end
