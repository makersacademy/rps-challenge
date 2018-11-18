feature 'Welcome page' do
  scenario 'allows the user to select a 1 or 2 player game' do
    visit '/'
    click_button '1 Player'
    expect(page).to have_current_path '/one_player'
  end

  scenario 'allows the user to select a 1 or 2 player game' do
    visit '/'
    click_button '2 Player'
    expect(page).to have_current_path '/two_player'
  end
end
