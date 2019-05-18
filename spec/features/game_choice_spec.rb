feature 'choose game' do

  scenario 'checks that the players are written on the page' do
    visit('/')
    click_button 'Bot'
    fill_in :marketer_1, with: 'Ollie'
    click_button 'Choose Game'
    expect(page).to have_content("Ollie vs. Bot")
  end

  scenario 'checks that the players are written on the page' do
    visit('/')
    click_button 'Marketing Colleague'
    fill_in :marketer_1, with: 'Ollie'
    fill_in :marketer_2, with: 'Dave'
    click_button 'Choose Game'
    expect(page).to have_content("Ollie vs. Dave")
  end

  scenario 'checks that there are two game options' do
    visit('/')
    click_button 'Bot'
    fill_in :marketer_1, with: 'Ollie'
    click_button 'Choose Game'
    expect(page).to have_selector(:link_or_button, 'Rock Paper Scissors')
    expect(page).to have_selector(:link_or_button, 'Rock Paper Scissors Spock Lizard')
  end
end
