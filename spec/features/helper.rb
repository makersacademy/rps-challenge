def repetetive_method
visit('/')
fill_in :names, with: "Jane"
click_button 'Submit'
expect(page).to have_content "Hi, Jane! Excited to have you here! Choose one of the options:"

end
