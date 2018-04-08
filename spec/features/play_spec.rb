feature "First play" do

  scenario 'Player can choose Rock' do
    visit('/play')
    find_button("Rock").visible?
  end
  scenario 'Player can choose Paper' do
    visit('/play')
    find_button("Paper").visible?
  end
  scenario 'Player can choose Scissors' do
    visit('/play')
    find_button("Scissors").visible?
  end

end
