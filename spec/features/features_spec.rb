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

  scenario 'user can play a round of RPS' do
    visit('/')
    fill_in(:player, with: 'Meg')
    click_button("Submiteth, Peasent")
    click_button("rock")
    #need to test this once I understand how to make the page work
  end
end
