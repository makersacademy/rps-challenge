

feature 'Home page' do
  scenario 'check the home page shows text' do
    visit '/'
    expect(page).to have_content "Welcome to our Rock Paper Scissors Game\nPlease enter name below"
  end
end