
feature 'Testing infastructure' do

  scenario 'can allow a player to enter their name' do
    visit('/')
    fill_in 'player', with: 'Steph'
    click_button "Submit"
    expect(page).to have_content 'Steph'
  end
end
