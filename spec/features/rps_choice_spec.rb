feature 'Choice of RPS' do
  scenario 'player is presented with choice of weapons' do
    sign_in_and_play
    expect(page).to have_content 'Please enter your preferred weapon:'
  end

  scenario 'player can choose a weapon' do
    sign_in_and_play
    click_button 'Choose!'
    expect(page).to have_content 'You selected Rock!'
  end
end
