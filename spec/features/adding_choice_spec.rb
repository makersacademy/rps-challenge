feature "Adding choice" do
  scenario "Player 1 adds choice" do
    sign_in_and_play
    choose_options
    expect(page).to have_content('Choose your weapon, Charles')
  end

  scenario "Player 2 adds choice" do
    sign_in_and_play
    choose_options
    choose_options
    expect(page).to have_content('Choices have been decided')

  end
end
