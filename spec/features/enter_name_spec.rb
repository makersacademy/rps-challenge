feature 'enter player name' do
  scenario 'player can enter name and submit form' do
    enter_name_and_play
    expect(page).to have_content('Hello Ash!')
  end
end
