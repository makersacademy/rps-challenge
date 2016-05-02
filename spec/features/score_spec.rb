feature 'View score' do
  scenario 'player can see their current score' do
    visit('/')
    fill_in :player_name, with: 'Maggie'
    click_button 'START'
    expect(page).to have_content 'Score : 0'
  end
end

feature 'Change score' do
  before {allow_any_instance_of(Array).to receive(:sample).and_return(:LIZARD)}
  scenario 'winning will increase the player\'s score' do
    visit('/')
    fill_in :player_name, with: 'Maggie'
    click_button 'START'
    click_button 'SPOCK'
    expect(page).to have_content 'Score : 1'
  end
end

feature 'Change score' do
  before {allow_any_instance_of(Array).to receive(:sample).and_return(:LIZARD)}
  scenario 'losing will increase the computer\'s score' do
    visit('/')
    fill_in :player_name, with: 'Maggie'
    click_button 'START'
    click_button 'SPOCK'
    expect(page).to have_content 'Computer : Score : 1'
  end
end
