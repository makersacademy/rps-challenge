feature 'draw a game' do

  scenario 'choose scissors' do
    allow_any_instance_of(RandomChoice).to receive(:index).and_return(2)
    sign_in_and_play
    click_button 'SCISSORS'
    expect(page).to have_content('You draw')
  end

end
