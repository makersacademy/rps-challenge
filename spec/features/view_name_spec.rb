feature 'View player name' do
  scenario 'Player enters name and it get displayed on screen' do
    visit '/'
    fill_in :"name", with: "Barry"
    click_button 'Submit'
    expect(page).to have_content 'Barry'
  end

end