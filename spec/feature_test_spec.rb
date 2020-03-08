require './app.rb'

feature 'testing infrastructure' do
  scenario 'testing framework is set up correctly' do
    visit ('/test')
    expect(page).to have_content "Testing"
  end
end


feature 'user can enter their name' do
  scenario 'user is prompted to input their name' do
    visit ('/')
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'user can enter their name into a box' do
    visit ('/')
    fill_in :player_name, with: 'John'
    click_button 'Start game'
    expect(page).to have_content "John, are you ready to play?"
  end
end
