require_relative "../../app"
require_relative "../spec_helper.rb"

feature "Player names" do
  scenario "Can enter player names" do
    enter_name
    expect(page).to have_content "Welcome Simon"
  end
end

feature "Availability of options" do
  scenario "Can view Rock" do
    enter_name
    expect(page).to have_content "Rock"
  end

  scenario "Can view Paper" do
    enter_name
    expect(page).to have_content "Paper"
  end

  scenario "Can view Scissors" do
    enter_name
    expect(page).to have_content "Scissors"
  end

end
