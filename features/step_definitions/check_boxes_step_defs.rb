When("I check all options by clicking a button") do
  visit(SeleniumEasyPage)
  on(SeleniumEasyPage)do |page|
    page.input_forms
    page.checkboxes
  end
  sleep 10
  on(CheckBoxesPage).btn_check_all
  sleep 10
end


Then("I verify all boxes are checked and button name is {string}") do |string|
 on(CheckBoxesPage) do |page|
   expect(page.chk_option1_checked?).to be true
   expect(page.chk_option2_checked?).to be true
   expect(page.chk_option3_checked?).to be true
   expect(page.chk_option4_checked?).to be true
   expect(page.btn_element.text).to include("Uncheck All")
 end
end


And("I unchecked one of the box") do
    on(CheckBoxesPage).random_uncheck
end


Then("I verify button changed to {string}") do |string|
  expect(on(CheckBoxesPage).btn_element.text).to include("Check All")
end