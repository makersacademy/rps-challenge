feature 'Game over' do
  scenario 'finishing a game' do
    sign_in_and_play
    move_selection
    click_on 'See the results'
    expect(page).to have_content 'You win!!'
  end
end
