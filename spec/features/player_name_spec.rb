feature 'player can register name' do

  scenario 'player is prompted to enter name' do
    visit '/'
    expect(page).to have_content 'Welcome player - please enter your name'
  end

  scenario 'player can enter their name' do
    visit '/'
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'OK Dave - choose your weapon!'
  end
end
