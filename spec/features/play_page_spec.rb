feature 'allows user to visit play page which should display their name' do
  scenario 'user goes to play page and see\'s their name' do
    visit '/'
    fill_in :'name', with: 'Ollie'
    click_button 'Submit'
    expect(page).to have_content "Ollie"
  end
end