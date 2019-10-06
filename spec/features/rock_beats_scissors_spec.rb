feature 'Playing RPS' do
  context 'Computer will choose scissors for this test' do
    scenario "When I submit 'Rock' I am receive confirmation that if I have won" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_single
      click_button('rock')
      expect(page).to have_content "rock beats scissors"
      expect(page).to have_content "James wins!"
    end
  end

  context 'Computer once, player will win once' do
    scenario "After two rounds the score will be one to one" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_single
      click_button('rock')
      click_button('Next')
      click_button('paper')
      expect(page).to have_content "James: 1"
      expect(page).to have_content "1 :Computer"
    end
  end
end
