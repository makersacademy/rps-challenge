feature 'Enter name' do
  scenario 'Home page has message to enter name' do
    visit '/'
    expect(page).to have_content 'Enter your name to get started'
  end
end