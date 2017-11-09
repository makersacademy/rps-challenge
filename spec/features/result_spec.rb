feature 'Play result' do
  scenario 'Page shows adequate result' do
    enter
    sign_in
    play
    expect(page).to have_content "You chose:"
    expect(page).to have_content "Ricky chose:"
    expect(page).to have_content "Result:"
  end
end
