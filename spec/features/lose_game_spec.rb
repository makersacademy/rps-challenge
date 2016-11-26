feature 'lose a game' do

  scenario 'choose paper' do
    allow_any_instance_of(RandomChoice).to receive(:index).and_return(2)
    sign_in_and_play
    click_button 'PAPER'
    expect(page).to have_content('You lose')
  end

end
