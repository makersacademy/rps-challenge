describe "index.erb" do
  feature 'Entering player' do
    scenario 'Can enter player name in field' do
      visit('/')
      expect(page).to have_content 'Enter your name to play'
    end
  end
end
