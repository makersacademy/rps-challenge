feature "Shows the options available for a move" do
  scenario "Player enters name, and is presented with a range of combat options" do
    sign_in_and_play
    expect(page).to have_content('ROCK')
    expect(page).to have_content('PAPER')
    expect(page).to have_content('sicsors')
  end
end
