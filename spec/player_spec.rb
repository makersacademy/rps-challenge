feature 'expecting the filled out form to display on screen' do
  scenario 'A user enters their name into the specified fields' do
    visit('/')
    fill_in "player_one_name", :with => "Matthew"
    click_button "submit"
    expect(page).to have_content 'Matthew'
  end
end