require_relative '../../app'

feature "#home" do
  scenario "displays the homepage" do
    visit '/'
    expect(page).to have_content "Welcome to rock paper scissors!"
    expect(page).to have_content "Please enter your name:"
    expect(page).to have_field 'name'
    expect(page).to have_button 'Play!'
  end
end
