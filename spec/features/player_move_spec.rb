feature 'Player move' do
  scenario 'Player chooses their move' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You, Frank, have chosen to play Rock!'
  end
end
