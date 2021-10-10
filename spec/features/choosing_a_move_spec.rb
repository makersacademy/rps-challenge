feature 'Choosing a move' do
  scenario 'player clicks a move and it is displayed' do
    sign_in_1_player
    click_button 'rock'
    expect(page).to have_content 'Your move: rock'
  end
  
  scenario "computer's move is displayed" do
    sign_in_1_player
    click_button 'rock'
    expect(page).to have_content(/^.*Computer's move: (rock|paper|scissors).*$/)
  end
end
