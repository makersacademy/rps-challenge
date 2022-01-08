feature 'test enviroment' do
  scenario 'capybara is working' do
    visit '/'
    expect(page).to have_content('Hello World')
  end
end
