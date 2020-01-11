feature 'Entering player' do
  scenario 'Player can enter their names and get confirmation' do
    enter_name_and_play
    expect(page).to have_content "Emily vs. Lucy the Computer"
    expect(page).to have_content "Let's go!"
  end
end