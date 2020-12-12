
feature "There is a homepage asking for a name" do
    scenario 'Test if homepage is there' do
      visit '/'
      expect(page).to have_text("Welcome to Rock. Paper. SCISSORRSSS!")
    end
  end
  