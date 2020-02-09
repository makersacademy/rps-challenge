feature 'Computer makes choice' do
  scenario 'Expect computers choice to be visible' do
    srand(67809)
    visit('/')
    fill_in :player_1_name, with: 'Gruntilda'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'Computer picked: Scissors'
  end
end