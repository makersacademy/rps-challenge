feature 'Entering name' do
  scenario 'The player can enter their name before starting the game' do
    enter_name_and_submit
    expect(page).to have_content 'What will you choose, Glykeria?'
  end
end
