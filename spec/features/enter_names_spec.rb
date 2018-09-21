feature 'Enter Name' do
  scenario 'submit player name' do
    enter_name_and_play
    expect(page).to have_content 'Sharknado has entered the game.'
  end
end
