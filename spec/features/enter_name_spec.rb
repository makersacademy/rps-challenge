feature 'Enter name' do
  scenario 'Home page has message to enter name' do
    visit '/'
    expect(page).to have_content 'Enter your name to get started'
  end

  scenario 'Submit name takes user to the choose-move page' do
    enter_name_and_start
    expect(page).to have_current_path('/choose-move')
  end
end