require 'spec_helper.rb'


feature 'Can see multiple results in the game ' do
  it 'See that player 1 wins ' do
    sign_in_and_play
    srand(2342)
    click_button 'Rock'
    # save_and_open_page
    expect(page).to have_content'You win'
  end

  it 'See that player 2 wins ' do
    sign_in_and_play
    srand(2343)
    click_button 'Paper'
    expect(page).to have_content'You lose'
  end

  it 'See that there is a draw  ' do
    sign_in_and_play
    srand(2343)
    click_button 'Scissors'
    expect(page).to have_content'draw'
  end

end
