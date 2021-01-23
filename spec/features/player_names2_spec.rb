feature "Enter names" do
    scenario "submitting names" do
        visit '/'
        fill_in :player_1_name, with: "Alex"
        # fill_in :player_2_name, with: "James"
        click_button 'Submit'
      expect(page).to have_content 'Alex' #vs. James
    end
end
  
    