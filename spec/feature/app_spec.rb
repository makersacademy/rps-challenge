require './app'

feature 'Hello world!' do
  scenario '/ route is defined and shows hello world' do
    visit '/'
    expect(page).to have_content "Let's play RBS!"
  end
end
