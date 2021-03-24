feature 'Homepage' do
  scenario 'homepage says "Hello Player!"' do
	   visit '/'
	   expect(page).to have_text("Hello Hello!")
  end
end
