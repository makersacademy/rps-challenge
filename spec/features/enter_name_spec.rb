feature "Enter name" do
  scenario "submitting name player" do
    sign_in_and_play
    expect(page).to have_content('Gadiza')
  end

end
