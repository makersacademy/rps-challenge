feature "player enters name" do
  scenario "name displayed - single player" do
    enter_and_submit_name_single
    expect(page).to have_text("ROSIE!")
  end

  scenario "name displayed - multi-player" do
    enter_and_submit_names_multi
    expect(page).to have_text("ROSIE VS SOPHIE!")
    expect(page).not_to have_text("ROSIE!")
  end
end