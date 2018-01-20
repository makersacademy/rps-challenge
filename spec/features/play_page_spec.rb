feature '#Play Page' do
  scenario 'Should be able to fill in player name' do
    sign_in_method
    expect(page).to have_text('Felix')
  end

  scenario 'Should be able to start game' do
    sign_in_and_play
    expect(page).to have_content "Let's play"
  end
end
