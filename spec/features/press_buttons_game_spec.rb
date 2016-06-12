feature 'pressing buttons on the game page' do

  scenario 'choose move in the game' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Dave'
    click_button 'rock'
    expect(page).to have_content 'Congratulations, you have won'
  end

end
