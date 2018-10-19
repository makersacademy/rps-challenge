feature 'Testing app.rb' do
  scenario 'app.rb works with features test' do
    visit('/')
      expect(page).to have_content "Enter Thine Name"
  end

  scenario 'user can input their name' do
    visit('/')
    click_button("Submiteth, Peasent")

  end
end
