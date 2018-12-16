feature 'Returns right draw' do

  scenario 'You drew with rock' do
    allow_any_instance_of(Computer).to receive(:compmove).and_return('Rock')
    sign_in
    play("Rock")
    expect(page).to have_content("You drew... A little underwhelming")
  end

  scenario 'You drew with paper' do
    allow_any_instance_of(Computer).to receive(:compmove).and_return('Paper')
    sign_in
    play("Paper")
    expect(page).to have_content("You drew... A little underwhelming")
  end

  scenario 'You drew with scissors' do
    allow_any_instance_of(Computer).to receive(:compmove).and_return('Scissors')
    sign_in
    play("Scissors")
    expect(page).to have_content("You drew... A little underwhelming")
  end

end
