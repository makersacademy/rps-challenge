feature 'Setting name' do
  scenario 'can enter name at start of game' do
    begin_game
    expect(page).to have_content 'Welcome Matt!'
  end
end