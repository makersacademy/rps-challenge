feature 'npc chooses' do
  scenario 'shows NPCs choice' do
    begin_game
    choose_rock
    expect(page).to have_content 'The computer chose '
  end
end
