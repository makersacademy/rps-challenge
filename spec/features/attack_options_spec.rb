feature 'Player has three attack options' do

  before do
    sign_in_and_play
  end

  scenario 'Player can click on Rock button' do
    sign_in_and_play
    expect(page).to have_button('Rock')
  end

  scenario 'Player can click on Paper button' do
    sign_in_and_play
    expect(page).to have_button('Paper')
  end

  scenario 'Player can click on Scissors button' do
    sign_in_and_play
    expect(page).to have_button('Scissors')
  end
end
