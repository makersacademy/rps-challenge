feature 'Enter and submit name, show name on screen' do
  scenario 'submit name entered in form to display in game' do
    visit('/')
    fill_in :user_name, with: 'Sel'
    click_button 'Submit'
    expect(page).to have_content 'Sel please choose one of the options below'
  end
end

feature "User selects an option and the game's selection is displayed" do
  scenario 'Game selection displayed' do
    visit('/')
    fill_in :user_name, with: 'Sel'
    click_button 'Submit'
    visit('/round')
    click_button 'Rock'
    expect(page).to have_content 'Game chose:'
  end
end
