feature 'Winning / Losing hand' do
  scenario 'either playe or computer  wins a hand' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'wins: 1'
  end
end
