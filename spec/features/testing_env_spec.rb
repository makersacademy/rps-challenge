feature 'test enviroment' do
  scenario 'capybara is working' do
    visit '/'
    expect(page).to have_content('RPS for your life')
  end
end
