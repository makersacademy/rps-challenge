feature 'Register name' do
  scenario 'marketeer is registering his/her name' do
    visit('/')
    fill_in :marketeer1, with: 'Alex'
    click_button 'Register your name'
    expect(page).to have_content('Hello Alex!')
  end
end
