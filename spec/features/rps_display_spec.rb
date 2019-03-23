feature 'RPS Display' do

  scenario 'User sees RPS Display and Rock, Paper, Scissors selections' do
    visit '/'
    enter_name
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

  scenario 'User selects rock' do
    visit '/'
    enter_name
    click_button 'Rock'
  end

end
