
feature 'register player name' do
  scenario 'players name is registered before playing' do
    sign_in_and_play
    expect(page).to have_text('Dragon Eyes vs. Eagle Claw')
  end
end
