feature "Playing the game" do
  before :each do
    visit '/'
    click_on 'Submit'
  end

  context 'when on new game screen' do
    scenario 'user is asked to enter name' do
      expect(page).to have_content("Make your selection!")
    end
  end

  context 'clicks on radio button' do
    scenario "User makes a selection and the game outcome is evaluated" do
      click_on 'Shoot'
      expect(page).to have_content("And the winner is...")
    end
  end
end
