feature 'So that I can enjoy myself' do
  scenario 'be able to play rps' do
    visit '/'
    fill_in :player_name, with: 'player'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'You selected Rock...'
  end
end

feature 'So that I can enjoy myself' do
  scenario 'be able to play rps' do
    visit '/'
    fill_in :player_name, with: 'player'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'You selected Paper...'
  end
end

feature 'So that I can enjoy myself' do
  scenario 'be able to play rps' do
    visit '/'
    fill_in :player_name, with: 'player'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'You selected Scissors...'
  end
end
