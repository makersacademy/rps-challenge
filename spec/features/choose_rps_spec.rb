feature 'choose_rps' do
  scenario 'player selects rock, paper, or scissors' do
    start_game
    select_scissors
    expect(page).to have_content 'You chose scissors!'
  end
end
