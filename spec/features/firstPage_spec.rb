feature "Asking the name when visiting the first pafe." do
  scenario "When visiting the first page, the name of the person is asked." do
    visit "/"
    expect(page).to have_content "Please enter your name."
  end
end
