feature 'Has buttons for Rock, Paper, and Scissors' do

  scenario 'Rock button exists' do
    sign_in_and_play
    expect(page).to have_button('Rock')
  end

  scenario 'Paper button exists' do
    sign_in_and_play
    expect(page).to have_button('Paper')
  end

  scenario 'Scissors button exists' do
    sign_in_and_play
    expect(page).to have_button('Scissors')
  end

end
