feature 'Enter player name' do
  scenario 'submit player name' do
    enter_name_and_play
    expect(page).to have_content 'Prepare for hand-to-hand combat Andrew!'
  end
end
