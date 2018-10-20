feature 'Testing app.rb' do
  scenario 'app.rb works with features test' do
    visit('/')
    expect(page).to have_content "Enter Thine Name"
  end

  scenario 'user can input their name' do
    visit('/')
    fill_in(:player, with: 'Meg')
    click_button("Submiteth, Peasent")
    expect(page).to have_content "Meg"
  end
end
