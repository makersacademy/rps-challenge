feature 'Playing RPS' do
  context 'Computer will choose scissors for this test' do
    scenario "When I submit 'Rock' I am receive confirmation that if I have won" do
      allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
      visit '/'
      fill_in('player_1_name', with: 'James')
      click_button('Submit')
      click_button('rock')
      expect(page).to have_content "Rock beats Scissors"
      expect(page).to have_content "James wins!"
    end
  end
end
