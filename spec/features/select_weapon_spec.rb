feature 'Select weapon' do
  scenario 'Player can view the options Rock, Paper or Scissors' do
    sign_in_and_battle
    expect(page).to have_content 'Rock, Paper, or Scissors'
  end

  scenario 'Player can select either Rock, Paper, or Scissors' do
    sign_in_and_battle
    choose(option: 'rock')
    click_button('Submit')
    expect(page).to have_content 'You have chosen: rock'
  end
end

# feature '#Opponent' do
#   scenario 'Computer can pick a move' do
#     opponent = Opponent.new
#     opponent.choose_move('rock')
#     expect { opponent.move }.not_to eq(nil)
#   end
