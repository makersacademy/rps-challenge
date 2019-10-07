feature 'Returns right losses' do

  scenario 'You lost with rock' do
    allow_any_instance_of(Computer).to receive(:compmove).and_return('Paper')
    sign_in
    play("Rock")
    expect(page).to have_content("You lost! HA")
  end

  scenario 'You lost with paper' do
    allow_any_instance_of(Computer).to receive(:compmove).and_return('Scissors')
    sign_in
    play("Paper")
    expect(page).to have_content("You lost! HA")
  end

  scenario 'You lost with scissors' do
    allow_any_instance_of(Computer).to receive(:compmove).and_return('Rock')
    sign_in
    play("Scissors")
    expect(page).to have_content("You lost! HA")
  end

end
