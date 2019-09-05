feature ' so I can see my name in lights' do
  scenario 'I can enter my name' do
    visit('/')
    fill_in :name, with: 'Maria'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Maria - Ready to play?'
  end
end
