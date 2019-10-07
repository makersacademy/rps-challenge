feature "choose opponent" do

  scenario "checks that the infrastructure is working" do
    visit('/test')
    expect(page).to have_content "Testing infrastructure working"
  end

  scenario "checks that the homepage has an option for opponent type" do
    visit('/')
    expect(page).to have_selector(:link_or_button, 'Marketing Colleague')
    expect(page).to have_selector(:link_or_button, 'Bot')
  end
end
