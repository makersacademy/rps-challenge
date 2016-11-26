RSpec.feature "Determine winner", :type => :feature do

  scenario "Find out who wins" do
    sign_up_submit_generate_opponent
    click_button("Choose Your Weapon")
    click_button("Submit")
    click_button("Find out who wins...")
    expect(page).to have_text("wins!")
  end

end
