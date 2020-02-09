feature 'Player chooses move' do
  scenario "player chooses between rock" do
    visit('/')
    fill_in :player_1_name, with: 'Gruntilda'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Player: picked Rock'
  end
end