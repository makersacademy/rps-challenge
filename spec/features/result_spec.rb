feature 'outcome of game is displayed correctly' do
  scenario 'player is taken to results page after choosing weapon' do
    sign_in
    click_link('Rock')
    expect(page).to have_content 'You chose'
  end

  scenario 'player can see their choice on results page' do
    sign_in
    click_link('Rock')
    expect(page).to have_content 'You chose Rock'
  end

end
