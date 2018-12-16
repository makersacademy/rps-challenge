feature 'get player name' do
  scenario  'user can enter name' do 
    sign_in_and_play
    expect(page).to have_content 'Welcome to ROCK, PAPER, SCISSORS CAROL!'
  end
end