feature 'Homepage' do
  scenario 'homepage says "Hi"' do
	visit '/'
	expect(page).to have_text("Hi")
  end
end