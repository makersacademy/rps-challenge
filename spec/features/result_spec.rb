feature 'results page' do
  scenario 'declaring a drawn result' do
    visit '/'
    fill_in 'marketeer1', with: 'Rory'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content("Thats a draw")
  end
end
