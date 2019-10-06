feature 'make a multiplayer move' do
  scenario 'both players can make a move and see a confirmation' do
    select_mp_and_sign_in
    select 'ROCK', from: "move1"
    select 'ROCK', from: "move2"
    click_button 'submit'
  end
end
