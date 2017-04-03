xfeature 'Player finds out if they won' do

  scenario 'Player wins' do
    sign_in_and_play
    click_button "Rock"
    click_button "OK"
  end

end
