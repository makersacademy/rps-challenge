feature 'Play Rock Paper Scissors' do
  scenario 'Play Rock' do
    register
    click_button 'Rock'
    expect(page).to have_content 'You played Rock'
  end

  scenario 'Opponent plays' do
    register
    click_button 'Rock'
    # expect(page).to have_content 'You played Rock'
    # page.should satisfy {|page| page.has_content?('You win') or page.has_content?('You lose')}
    expect(page).to have_content 'Your opponent played '
  end

  scenario 'win or lose' do
    register
    click_button 'Rock'
    expect(page).to have_content 'You are a '
  end
end
