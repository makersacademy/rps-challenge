feature 'start again' do

  scenario 'after one round player can continue' do
    visit('/')
    fill_in :marketeer1, with: 'Alex'
    click_button 'Register your name'
    click_button 'Rock'
    click_button 'Play again'
    expect(page).to have_content("Hello Alex")
  end
end
