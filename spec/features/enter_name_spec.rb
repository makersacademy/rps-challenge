feature 'Enter name' do
  scenario 'player enters their name and gets a welcome screen' do
    visit '/'
    select 'One Player', from: 'players'
    click_button 'Submit'
    fill_in 'name', with: "Mittens"
    click_button 'Submit'
    expect(page).to have_content 'Welcome Mittens, please select a move!'
  end
end
