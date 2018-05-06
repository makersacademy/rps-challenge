feature 'test spec' do
  before do
    visit('/')
  end

  scenario 'reading from a page' do
    expect(page).to have_text("It's rock paper scissor time!")
  end
end
