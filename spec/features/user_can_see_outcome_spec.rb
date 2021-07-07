

feature "user makes choice and" do
  scenario "user can see outcome" do
  sign_in_and_play
  click_button("Scissors")
  # expect(page).to have_content("win"|"lose"|"draw")
  expect { |page| page.have_content('win') or page.have_content('lose') or page.have_content('draw') }

  end

end
