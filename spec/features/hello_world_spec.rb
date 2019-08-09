describe 'Home page', type: :feature do
  it 'says hello world' do
    visit('/')
    expect(page).to have_content(Rochambeau::WELCOME)
  end
end
