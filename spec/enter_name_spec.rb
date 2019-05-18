feature 'Name entry' do
  scenario "player's name is displayed after submission" do
    visit('/')
    fill_in 'player_name', with: 'Alice'
    click_button 'Submit'

    expect(page).to have_content('Alice vs. Computer')
  end
end
