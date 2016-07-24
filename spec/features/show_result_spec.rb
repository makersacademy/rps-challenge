RSpec.feature "Result is Displayed", :type => :feature do

  before(:each) do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    enter_name_and_play
  end

  scenario "Computer's choice of weapon is displayed" do
    click_button "Rock"

    expect(page).to have_content "I have selected Paper..."
  end

  scenario "When computer wins" do
    click_button "Rock"

    expect(page).to have_content "Paper beats Rock...  you lose!"
  end

  scenario "When it's a draw" do
    click_button "Paper"

    expect(page).to have_content "We both chose Paper...  it's a draw!"
  end

  scenario "When player wins" do
    click_button "Scissors"

    expect(page).to have_content "Scissors beat Paper...  you win!"
  end

end
