feature 'Enter name and click start game' do
  scenario 'Go to game view' do
    visit '/'
    fill_in "name", with: 'Matt'
    click_button 'Submit'
    expect(page).to have_content "Hi, Matt. Let's play!"
  end
end
