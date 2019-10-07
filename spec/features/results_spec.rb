feature "making a choice" do
  scenario 'player chooses an option' do
    sign_in_and_play
    check("paper")
    click_button "Submit"
    expect(page).to have_content "Computer chose"
  end
end
