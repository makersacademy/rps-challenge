def enter_name_and_start
  visit '/'
  fill_in 'name', with: 'Veronica'
  click_button "LET'S GO"
end
