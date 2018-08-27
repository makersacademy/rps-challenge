feature "choice log" do
  scenario "returns player's previous choices"  do
    single_sign_in
    single_sample_games
    click_button 'See previous choices'
    expect(page).to have_content 'Rock Paper Rock Scissors Scissors Paper'
  end
end
