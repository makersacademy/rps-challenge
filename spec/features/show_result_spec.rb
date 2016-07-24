RSpec.feature "Result is Displayed", :type => :feature do

  before(:each) do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    enter_name_and_play
  end

  scenario "Computer's choice of weapon is displayed" do
    click_button "Rock"

    expect(page).to have_content "I have selected Paper..."
  end

  scenario "User selects Rock" do
    click_button "Rock"

    expect(page).to have_content "Paper beats Rock... I win!"
  end

  scenario "User selects Paper" do
    click_button "Paper"

    expect(page).to have_content "We both chose Paper... It's a Draw!"
  end

  scenario "User selects Scissors" do
    click_button "Scissors"

    expect(page).to have_content "Scissors beat Paper... You Win!"
  end

end
