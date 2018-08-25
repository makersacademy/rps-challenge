feature 'enter names' do
  scenario 'player can enter their name' do
    sign_in_and_play
    expect(page).to have_content 'karho please choose your weapon: rock, paper, or scissors'
  end
end
