feature 'playing a game' do
  scenario 'player 1 has a turn' do
    sign_in
    expect(page).to have_content("diana's turn")
    expect(page).to have_button "Scissors"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Rock"
  end

  scenario 'player 2 has a turn' do
    sign_in
    click_on "Rock"
    expect(page).to have_content("dave's turn")
  end
end

    
