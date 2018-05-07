feature 'testing the result of the game' do
  scenario 'page shows player has won' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(2)
    select 'Rock', from: 'move'
    click_button 'submit'
    expect(page).to have_content("You win!")
  end
  scenario 'page shows cpu has won' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(1)
    select 'Rock', from: 'move'
    click_button 'submit'
    expect(page).to have_content("You lose!")
  end
  scenario 'page shows a draw' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(0)
    select 'Rock', from: 'move'
    click_button 'submit'
    expect(page).to have_content("It's a draw!")
  end
end
