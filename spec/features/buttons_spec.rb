feature 'Player chooses a move' do
  before (:each) do
    sign_in_and_play
  end

  scenario 'Submits user choice of rock' do
    click_button 'Rock'
    expect(page).to have_content 'Rock'
  end

  scenario 'Submits user choice of paper' do
    click_button 'Paper'
    expect(page).to have_content 'Paper'
  end

  scenario 'Submits user choice of scissors' do
    click_button 'Scissors'
    expect(page).to have_content 'Scissors'
  end
end