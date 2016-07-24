RSpec.feature "Result is Displayed", :type => :feature do

  before(:each) do
    enter_name_and_play
  end

  context "Computer's choice of weapon is displayed" do
    it "shows computer's choice" do
      choose 'rock'
      click_button "Submit"
      expect(page).to have_content "I have selected Paper..."
    end
  end
  # scenario "User selects Rock" do
  #   choose 'rock'
  #   click_button "Submit"
  #
  #   expect(page).to have_content ""
  # end


end
