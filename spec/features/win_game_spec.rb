feature 'win a game' do

  scenario 'choose rock' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in_and_play
    click_button 'ROCK'
    expect(page).to have_content('You win')
  end

end
