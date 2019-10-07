feature 'Picking moves' do

  scenario 'Player picks a move, either rock, paper or scissors' do
    sign_in
    click_button 'Play'
    click_button 'rock'
    expect(page).to have_content 'Play again?'
  end

end
