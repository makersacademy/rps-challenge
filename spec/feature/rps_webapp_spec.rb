require "capybara/rspec"

feature "web app opens correctly:" do
  scenario "'/' Returns 'Hello World'" do
    visit('/')
    expect(page).to have_content "Hello World"

  end

end
