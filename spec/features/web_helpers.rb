def enter_name_and_start
  visit '/'
  fill_in 'name', with: 'Veronica'
  click_button "Let's go"
end