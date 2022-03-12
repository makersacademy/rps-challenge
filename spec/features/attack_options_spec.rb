feature 'Player has three attack options' do

  before do
    sign_in_and_play
  end

  scenario 'Player can click on Rock button' do
    click_button 'Rock'
    expect(page).to have_content('Valentina chose Rock')
  end

  scenario 'Player can click on Paper button' do
    click_button 'Paper'
    expect(page).to have_content('Valentina chose Paper')
  end

  scenario 'Player can click on Scissors button' do
    click_button 'Scissors'
    expect(page).to have_content('Valentina chose Scissors')
  end
end
