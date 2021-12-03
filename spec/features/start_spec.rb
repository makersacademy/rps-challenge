feature 'user can start a game' do
  before(:each) do 
    visit('/')
  end

  scenario 'home page welcomes you to the game' do 
    expect(page).to have_content "Let's play Rock Paper Scissors!"
  end

  scenario 'home page has a Player 1 box' do
    expect(page.has_field?('player1')).to be_truthy
  end

  scenario 'user will see their name on screen after clicking on the start button' do
    sign_in_and_play
    expect(page).to have_content 'Patos'
  end
end
