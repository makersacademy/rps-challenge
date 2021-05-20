
def fillin_and_submit
  visit '/'
  fill_in :player, with: 'abdur'
  click_button 'Submit'
end  