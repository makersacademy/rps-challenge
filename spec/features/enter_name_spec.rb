feature "Enter name" do
  scenario "Allows user to enter name" do
    visit '/'
    fill_in 'Name', with: 'Laura'
    click_on('Submit')
    expect(page).to have_content("Hello Laura, let's play Rock Paper Scissors!" )
  end
end
