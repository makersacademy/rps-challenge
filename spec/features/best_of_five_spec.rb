feature 'Best of three wins' do
  context 'Computer will choose rock for this test' do
    scenario "When the player chooses a winning weapon thrice, they will be announced as the champion" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      sign_in_single
      click_button('paper')
      click_button('Next')
      click_button('paper')
      click_button('Next')
      click_button('paper')
      click_button('Next')
      expect(page).to have_content "James is the champion!"
    end
  end
end
