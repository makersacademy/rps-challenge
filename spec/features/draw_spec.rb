feature 'Draw page' do

  scenario 'the player is given confirmation of the draw' do
    sign_in_and_play
    draw
    expect(page).to have_content("You drew!")
  end

  scenario 'the scores aren\'t affected by a draw' do
    sign_in_and_play
    draw
    expect(page).to have_content("Ellie : 0 Computer : 0")
  end

end
