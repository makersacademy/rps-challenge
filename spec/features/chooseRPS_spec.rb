feature 'RPS Selection' do

  scenario 'Player may choose RPS' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You have chosen the rock!')
  end

  scenario 'Player chooses Paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('You have chosen the paper!')
  end



end
