feature 'Enter name before the game' do
  scenario 'Submit name via a form' do
    visit '/'
    fill_in('Name', with: 'Kojak')
    click_button('Submit')
    expect(page).to have_content('Welcome Kojak!')
  end
end