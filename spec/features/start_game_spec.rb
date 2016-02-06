feature 'click to commence game' do

  scenario 'can click to play game' do
    visit('/')
    fill_in :player_name, with: 'Heather'
    click_button 'Submit'
    expect(page).to have_button 'Play now'
  end

end
