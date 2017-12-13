describe 'results.erb' do
  feature 'still has the player name' do
    scenario 'has player name on screen regardless of result' do
      play_rock
      expect(page).to have_content('Tom')
    end
  end

  feature 'decides the result' do
    scenario 'page displays which option the player and AI played' do
      scissors = double(:scissors, name: 'scissors')
      allow_any_instance_of(Array).to receive(:sample) { scissors }
      play_rock
      expect(page).to have_content('Tom played rock')
      expect(page).to have_content('Tom wins!')
    end
  end
end
