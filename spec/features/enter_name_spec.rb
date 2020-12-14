
feature "There is a homepage" do
    scenario 'Test if homepage is there' do
      visit '/'
      expect(page).to have_text("Welcome to Rock. Paper. SCISSORRSSS!")
    end
  end
  