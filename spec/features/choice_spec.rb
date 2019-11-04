feature 'choose rock paper or scissors' do
  it 'confirms player 1 chose paper' do
    fill_in_and_submit
    click_button 'Paper'
    expect(page).to have_content 'Ben chose Paper!'
  end

  it 'confirms player 2 chose scissors' do
    fill_in_and_submit
    click_button 'Paper'
    click_button 'Return'
    click_button 'Scissors'
    expect(page).to have_content 'Amy chose Scissors!'
  end
end
