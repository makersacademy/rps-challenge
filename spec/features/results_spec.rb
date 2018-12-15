feature 'Declaring a winner' do
  scenario 'player 1 wins' do
    sign_in_and_play
    choose 'rock'
    click_button 'Go!'

    expect(page).to have_content 'The winner is ... Gon!'
  end
end
