feature 'Choices:' do
  scenario 'player can choose rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content 'What\'s your weapon?'
  end
end
