feature "Login player" do
  scenario 'submitting players name' do
    visit( '/' )
    fill_in :players_name, with: "Meerkat"
    click_button "Submit"
    expect(page).to have_content "Meerkat"
  end
end