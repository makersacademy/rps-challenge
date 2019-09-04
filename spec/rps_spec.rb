feature ' so I can see my name in lights' do
  scenario 'I can enter my name' do
    visit ('/') do
      page.should_have_css('input[name="name"]')
      page.should have_css('input[name="Player1"]')
    end
  end
end
