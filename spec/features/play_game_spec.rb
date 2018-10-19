feature 'Feature - Play Rock Paper Scissors' do

  before :each do
    srand(1)
  end

  scenario 'Play Rock' do
    register
    click_button 'Rock'
    expect(page).to have_content 'You played rock'
  end

  scenario 'Opponent plays - returns a random entry' do
    register
    click_button 'Rock'
    # expect(page).to have_content 'You played Rock'
    # page.should satisfy {|page| page.has_content?('You win') or page.has_content?('You lose')}
    # expect(page).to have_content 'Your opponent played Rock '.or(have_content('Your opponent played Paper')).or(have_content('Your opponent played Scissors'))
    # expect(page).to have_content(/Rock|Paper|Scissors/)
    expect(page).to have_content(/Your opponent played (rock|paper|scissors)/)

    # expect(page).to have_content(/((^|, )(Rock|Paper|Scissors))+$/)

  end

  scenario 'winner or loser' do
    register
    click_button 'Rock'
    # expect(page).to have_content 'You are a '
    expect(page).to have_content(/You are a (winner|loser)/)
  end

  scenario 'draw' do
    register
    click_button 'Paper'
    # expect(page).to have_content 'You are a '
    expect(page).to have_content "Draw"
  end

  # scenario 'win or lose - outcome' do
  #   register
  #   click_button 'Rock'
  #   # expect(page).to have_content 'You are a '
  #   expect(page).to have_content(/rock (draws with|beats|loses to)/)
  # end
end
