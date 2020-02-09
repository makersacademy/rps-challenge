feature 'entering_names' do 
  scenario 'Can enter a name in a form' do
    visit('/')
    fill_in :player_1_name, with: 'Mario'
    fill_in :player_2_name, with: 'Bowser'
    click_button 'Submit'
    expect(page).to have_content "Mario vs. Bowser"
  end
end
