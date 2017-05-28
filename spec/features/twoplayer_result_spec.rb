feature 'infrastructure of result page is set up properly' do
  scenario 'players are taken to results page after choosing weapon' do
    two_player_sign_in
    click_link('Rock')
    click_link('Paper')
    expect(page).to have_content 'Kavita chose'
  end

  scenario 'player 1 can see their choice on results page' do
    two_player_sign_in
    click_link('Rock')
    click_link('Paper')
    expect(page).to have_content 'Kavita chose Rock.'
  end

  scenario 'player 2 can see their choice on results page' do
    two_player_sign_in
    click_link('Rock')
    click_link('Paper')
    expect(page).to have_content 'Vanita chose Paper.'
  end
end
