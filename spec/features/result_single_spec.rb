feature 'result page single player' do
  scenario 'displays players move' do
    sign_in_and_pick_rock
    expect(page).to have_content "YOU PICKED ROCK"
  end

  scenario 'has an option to return to play page' do
    sign_in_and_pick_rock
    click_button 'Play Again'
    expect(page).to have_content 'STEVE, SELECT YOUR MOVE'
  end
end
