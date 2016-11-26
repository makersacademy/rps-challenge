RSpec.feature "Play against computer opponent", :type => :feature do

  scenario "Generate computer opponent with weapon" do
    sign_up_submit
    click_button("Generate Opponent")
    expect(page).to have_text("Your computer opponent has been generated. Its name is Computer ")
    expect(page).to have_text("Your opponent has chosen a weapon. Time to choose yours")
  end

end
