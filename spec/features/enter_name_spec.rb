feature 'Enter name' do
  scenario 'submitting name of the player' do
    visit('/')
    fill_in :player_name, with: "Alex"
    click_button 'Play'
    expect(page).to have_content 'Alex vs. Computer!'
  end
end
