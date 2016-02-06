feature 'winning' do

  scenario 'one of the players loses the game' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in_and_choose_computer
    click_button('Rock')
    click_button('Continue')
    expect(page).to have_content('Paper beats Rock!, Computer has won!')
  end


end
