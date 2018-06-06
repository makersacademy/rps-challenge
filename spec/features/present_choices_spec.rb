feature 'Present choices' do
  scenario 'player can choose rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content 'Make your move: do you choose rock, paper or scissors?'
  end
end
