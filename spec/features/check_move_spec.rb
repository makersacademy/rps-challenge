feature 'Choose a move' do

  before(:each) do
    sign_in
  end

  scenario 'choose rock' do
    click_button 'Rock'
    expect(page).to have_content 'You win!'
  end

  scenario 'choose paper' do
    click_button 'Paper'
    expect(page).to have_content 'You win!'
  end

  scenario 'choose scissors' do
    click_button 'Scissors'
    expect(page).to have_content 'You win!'
  end

end
