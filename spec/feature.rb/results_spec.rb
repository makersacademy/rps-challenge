feature 'Winner' do
  scenario 'should return draw if player choices same' do
    sign_in_and_ready_up
    click_button('Lets Rock!')
    select 'Rock', from: 'player1_select'
    select 'Rock', from: 'player2_select'
    click_button('FIGHT!')
    expect(page).to have_content("IT'S A DRAW!")
  end

  scenario 'Testing game logic' do
    sign_in_and_ready_up
    click_button('Lets Rock!')
    select 'Paper', from: 'player1_select'
    select 'Rock', from: 'player2_select'
    click_button('FIGHT!')
    expect(page).to have_content("PLAYER 1 WINS!")
  end

  scenario 'Testing game logic' do
    sign_in_and_ready_up
    click_button('Lets Rock!')
    select 'Scissors', from: 'player1_select'
    select 'Rock', from: 'player2_select'
    click_button('FIGHT!')
    expect(page).to have_content("PLAYER 2 WINS!")
  end

end
