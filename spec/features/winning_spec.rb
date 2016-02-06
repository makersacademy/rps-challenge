feature 'winning' do

  scenario 'one of the players loses the game' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    click_button('Rock')
    click_button('Continue')
    expect(page).to have_content('Rock beats Paper!, Emma has won!')
  end


end
