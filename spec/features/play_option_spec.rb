feature 'choose play' do
    scenario 'pressing rock, paper, scissors button' do
      visit ('/name')
      click_button :rock
      expect(page).to have_content "You pressed"
    end
  end