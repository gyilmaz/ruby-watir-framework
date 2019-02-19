When("I check all options by clicking a button") do
  visit(SeleniumEasyPage)
  on(SeleniumEasyPage)do |page|
    page.input_forms
    page.checkboxes
  end
  on(CheckBoxesPage).btn_check_all
end


Then("I verify all boxes are checked and button name is {string}") do |string|
#TODO
end


And("I unchecked one of the box") do
#TODO
end


Then("I verify button changed to {string}") do |string|
#TODO
end