feature 'Show winner' do
  xscenario 'player lose' do
    visit('/')
    fill_in :player_name, with: 'Oggie'
    click_button 'Submit'
    click_button 'Start'
    expect(page).to have_content 'Oggie lost.'
  end

  xscenario 'player wins' do
    visit('/')
    fill_in :player_name, with: 'Oggie'
    click_button 'Submit'
    click_button 'Start'
    expect(page).to have_content 'Oggie won.'
  end
end
