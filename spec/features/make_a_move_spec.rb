feature 'make a move' do
  scenario 'the player can make a move and see a confirmation' do

    select_sp_and_sign_in
    click_button 'ROCK'
    expect(page).to have_content "JESS MADE THE MOVE : ROCK"

  end
end
