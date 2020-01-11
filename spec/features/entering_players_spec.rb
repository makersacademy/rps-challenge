feature 'Entering player' do
  scenario 'Player can enter their names and get confirmation' do
    visit('/')
    fill_in :player_1_name, with: 'Emily'
    fill_in :player_2_name, with: 'Lucy'
    click_button 'Click me!'
    expect(page).to have_content "Emily vs. Lucy"
    expect(page).to have_content "Let's go!"
  end
end