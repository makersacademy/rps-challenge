feature 'players choice' do
  scenario 'see rock, paper, scissor' do
    sign_in_and_play
    expect(page).to have_content 'Rock', 'Paper'
    expect(page).to have_content 'Scissors'
  end
end
