feature 'Capybara tests...' do

  scenario 'Player can see their name when they enter it and submit' do
    visit('/')
    fill_in 'name', with: 'Wilson'
    click_button 'Go!'
    expect(page).to have_content 'Wilson'
  end

  scenario 'Player is able to play rock/paper/scissors' do
    visit('/')
    fill_in 'name', with: 'Wilson'
    click_button 'Go!'
    click_button 'Rock'
    expect(page).to have_content 'beats'
    expect(page).to have_content 'win'
  end
end