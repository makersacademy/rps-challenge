feature 'Capybara tests...' do
  scenario 'Player can see their name when they enter it and submit' do
    visit('/')
    fill_in 'name', with: 'Wilson'
    click_button 'Go!'
    expect(page).to have_content 'Wilson'
  end
end