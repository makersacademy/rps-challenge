require 'capybara/rspec'

feature 'signs in the player' do
  scenario 'visit hompage to sign in' do
    visit('/')
    expect(page).to have_content('Enter your serial number,(name) human!!!')
    find_button('Obey').click
  end
end

feature 'displays player name given during registration' do
  scenario 'displays name' do
    visit('/')
    fill_in('name', with: 'Boris')
    click_button('Obey')
    expect(page).to have_content('Boris')
  end
end

feature 'displayes a prompt to chose a button' do
  scenario 'player is prompted to choose' do
    visit('/')
    fill_in('name', with: 'Boris')
    click_button('Obey')
    expect(page).to have_content('Choose wisely.')
  end
end

feature 'displayes 3 buttons' do
  scenario 'displays rock,paper,scissors buttons' do
    visit('/')
    fill_in('name', with: 'Boris')
    click_button('Obey')
    find_button('Rock').click
  end
end
