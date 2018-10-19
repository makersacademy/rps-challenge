feature 'Feature - Register name - single player' do
  scenario 'submit name, return name' do
    register_for_singleplayer
    expect(page).to have_content 'Welcome to Rock Paper Scissors, Clare!'
  end
end

feature 'Feature - Register name - multiplayer' do
  scenario 'submit name, return both names' do
    register_for_multiplayer
    expect(page).to have_content 'Welcome to Rock Paper Scissors, Clare and Laura!'
  end
end
