feature 'Enter name' do

  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: 'Matt'
    click_button 'ENTER'
  end
end
