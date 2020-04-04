feature 'player can play rock paper scissors' do
  scenario 'player has a "rock" button to click on' do
    visit '/'
    fill_in 'name', with: 'Phil'
    click_button 'Register'
    expect(page).to have_button('Rock')
  end

  scenario 'player has a "paper" button to click on' do
    visit '/'
    fill_in 'name', with: 'Phil'
    click_button 'Register'
    expect(page).to have_button('Paper')
  end

  scenario 'player has a "scissors" button to click on' do
    visit '/'
    fill_in 'name', with: 'Phil'
    click_button 'Register'
    expect(page).to have_button('Scissors')
  end
end
