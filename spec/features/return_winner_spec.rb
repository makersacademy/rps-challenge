feature 'Returns the winner' do

  before do
    allow(Kernel).to receive(:rand).and_return(0)
  end

  scenario 'The winner is player_1' do
    signin_and_play
    click_button 'Paper'
    expect(page).to have_content 'Hey! Hey! Bravo!'
  end

  scenario 'The winner is Mister Compurer' do
    signin_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Olala'
  end

  scenario 'There is not winner' do
    signin_and_play
    click_button 'Rock'
    expect(page).to have_content 'There is no winner!'
  end
end
