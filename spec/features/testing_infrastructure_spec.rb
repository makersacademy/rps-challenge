require '././app.rb'

feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content 'What is your name?'
  end
end

feature 'Enter player name' do
  scenario 'submitting player name' do
    visit('/')
    fill_in :player_name, with: 'Oli'
    click_button "Enter"
    expect(page).to have_content 'Welcome Oli', 'Would you like to pick Rock, Paper, or Scissors?'
  end
end



# What does the user have to do?
# What does the user expect to see?

# Visit the home page ('/')
# Fill in a text field with a name
# Click a Submit button
