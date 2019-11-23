feature 'players' do
  scenario 'entering the name of the players' do
  sign_in_and_play
    expect(page).to have_content "Welcome to the game Rebecca"
end

scenario 'expect choices to be passed to the new game' do
 sign_in_and_play
 expect(page).to have_content "Rebecca chose ROCK"
end



end
