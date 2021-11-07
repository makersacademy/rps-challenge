
feature RockPaperScissors do
  context 'start' do
    it 'has contents "Hello World" ' do
      visit '/'
      expect(page).to have_content('Hello World')
    end
  end
end
