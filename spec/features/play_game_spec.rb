feature 'Play game' do
  scenario 'allow player1 to select weapon and play game ' do
    signup_and_play
    choose 'Scissors'
    click_button 'Play'
    expect(page).to have_content("Ant selected scissors")
  end
end
