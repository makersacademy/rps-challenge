
def filing_form
  visit('./name')
  fill_in 'name', with: 'chris'
  click_button('submit')
end
