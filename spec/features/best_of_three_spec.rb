feature 'Best of three wins' do
  context 'Computer will choose rock for this test' do
    scenario "When the player chooses a winning weapon twice, they will be announced as the champion" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      visit '/'
      fill_in('player_1_name', with: 'James')
      click_button('Submit')
      click_button('paper')
      click_button('Next')
      click_button('paper')
      click_button('Next')
      expect(page).to have_content "James is the champion!"
    end
  end
end
