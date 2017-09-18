feature '#initialize' do
  scenario 'checks link is working' do
    visit('/')
    expect(page).to have_content "Which brave soul wants to challenge me to an RPS battle?????"
  end
end
