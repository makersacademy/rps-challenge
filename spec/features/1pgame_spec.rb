require 'capybara/rspec'

feature 'Game' do

  scenario 'greets the user' do
    visit '/'
    expect(page).to have_content "Hello, please enter your name to start:"
  end

  scenario 'allows user to enter name' do
    visit '/'
    expect(page).to have_css("input")
  end

  scenario 'allows user to enter name' do
    visit '/'
    expect(page).to have_button("Submit")
  end

  scenario 'welcomes the user' do
    visit '/'
    fill_in 'name', with: 'Salman'
    click_button 'Submit'
    expect(page).to have_content("Welcome, Salman!")
    expect(page).to have_content("Please select your weapon")
    expect(page).to have_select 'weapon', with_options: ['Rock','Paper','Scissors']
  end



end
