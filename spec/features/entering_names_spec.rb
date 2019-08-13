feature 'entering names of the 2 players' do
  scenario 'submit the names' do
    visit ('/')
    fill_in :player_1_name, with: 'Imane'
    fill_in :player_2_name, with: 'Sara'
    click_button 'Play'
    expect(page).to have_content 'Imane'
  end 
end 