feature 'Enter name' do
  scenario 'submitting a name' do
    visit('/')
    fill_in :player_name, with: 'Rango'
    click_button 'Submit'
    expect(page).to have_content "Welcome Rango, let's play"
  end
end
