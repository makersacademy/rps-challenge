feature 'offered different game modes' do
  scenario 'homepage has option for single player mode' do
    visit('/')
    expect(page).to have_button 'Single Player Mode'
  end

  scenario 'homepage has option for multiplayer mode' do
    visit("/")
    expect(page).to have_button 'Multiplayer Mode'
  end
end
