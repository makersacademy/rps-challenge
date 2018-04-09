describe 'playing process' do
  feature 'User can enter their name and see it on screen' do
    scenario 'User provides their name' do
      sign_in_and_play
      expect(page).to have_content 'Anna'
    end
  end
end
