feature 'testing homepage' do
  scenario 'Greets user' do
    visit('/')
    expect(page).to have_content 'Welcome!'
  end

  # and asks for their name
end
