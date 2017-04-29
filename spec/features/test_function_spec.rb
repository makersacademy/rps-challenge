feature 'Rock, Paper, Scissors buttons' do

  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'chose Rock and Computer chose'
  end

  scenario 'Player chooses Paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content 'chose Paper and Computer chose'
  end

  scenario 'Player choose Scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content 'chose Scissors and Computer chose'
  end

end
