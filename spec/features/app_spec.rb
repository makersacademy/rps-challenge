feature 'starting a game of RPS' do 
  scenario 'page has button to play game' do 
    visit '/'
    expect(page).to have_button "Play!"
  end 
end 

feature 'player can enter their name' do 
  scenario 'enters name and redirect to play page' do 
    sign_in
    expect(page).to have_content 'Bob, are you ready to play?'
  end 
end 

feature 'player makes move selection' do 
  scenario 'player can choose a move' do
    sign_in
    expect(page).to have_content 'Make your move...' 
  end
end

feature 'play can submit a move' do 
  scenario 'player makes move and confirmation appears' do 
    sign_in
    make_move
    expect(page).to have_content 'You played rock'
  end 
end

feature 'game consists of two moves' do 
  scenario 'computer can play a move' do 
    sign_in
    make_move
    expect(page).to have_content 'The computer played'
  end
end 

feature 'playing a full game ' do 
  scenario 'game played and winner displayed' do 
    sign_in
    make_move
    expect(page).to have_content 'You played' 
    expect(page).to have_content 'The computer played' 
  end 
end 