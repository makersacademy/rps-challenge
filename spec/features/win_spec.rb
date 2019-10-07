feature 'Returns right win' do

  scenario 'You won with rock' do
    allow_any_instance_of(Computer).to receive(:compmove).and_return('Scissors')
    sign_in
    play("Rock")
    expect(page).to have_content("You won!!")
  end

  scenario 'You won with paper' do
    allow_any_instance_of(Computer).to receive(:compmove).and_return('Rock')
    sign_in
    play("Paper")
    expect(page).to have_content("You won!!")
  end

  scenario 'You won with scissors' do
    allow_any_instance_of(Computer).to receive(:compmove).and_return('Paper')
    sign_in
    play("Scissors")
    expect(page).to have_content("You won!!")
  end

end
