feature "Submit name" do
  scenario "enter a name" do
    sign_in_and_play
    expect(page).to have_content 'Kyle vs Computer'
  end
end
