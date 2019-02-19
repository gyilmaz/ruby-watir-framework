When("I enter the message") do
  visit(SeleniumEasyPage)
  on(InputFormsPage) do |page|
    @message = "I entered new message"
    sleep 5
    page.txt_simple_input = @message
    sleep 5
    page.btn_show_msg
    sleep 5
  end
end

Then("I should be able to see the message that I entered") do
  on(InputFormsPage) do |page|
    expect(page.txt_display).to include(@message)
  end
end
