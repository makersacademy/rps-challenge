feature 'Enter name' do

  scenario 'Player1 submits a name' do
    visit('/')
    fill_in :player_1_name, with: 'Alec'
    click_button 'Ready'
    expect(page).to have_content 'Welcome Alec!'
  end
end
