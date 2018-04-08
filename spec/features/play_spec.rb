feature "First play" do
  before :each do
    sign_in_and_play
  end
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
