require './app.rb'
feature 'Enter name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: "Ruzeka"
    click_button "Play"
    expect(page).to have_content 'Ruzeka'
  end
end 

