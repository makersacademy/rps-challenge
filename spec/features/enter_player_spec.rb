feature 'Enter names' do
  scenario 'submitting names in single player' do
    sign_in
    expect(page).to have_content 'Dill!! CLICK ROCK, PAPER OR SCISSORS TO BEGIN'
  end
end

feature 'Enter names' do
  scenario 'submitting names in multiplayer' do
    sign_in_multiplayer
    expect(page).to have_content 'Dill!! CLICK ROCK, PAPER OR SCISSORS TO BEGIN'
  end
end
