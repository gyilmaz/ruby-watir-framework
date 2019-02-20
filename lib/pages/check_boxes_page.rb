class CheckBoxesPage
  include PageObject
  include DataMagic

  #button(:btn_check_all, id:'check1')
  button(:btn_check_all, value:'Check All' )
  button(:btn_uncheck_all, value:'Uncheck All' )
  button(:btn, id:'check1')

  checkbox(:chk_option1, xpath: "//label[contains(., 'Option 1' )]//child::input" )
  checkbox(:chk_option2, xpath: "//label[contains(., 'Option 2' )]//child::input" )
  checkbox(:chk_option3, xpath: "//label[contains(., 'Option 3' )]//child::input" )
  checkbox(:chk_option4, xpath: "//label[contains(., 'Option 4' )]//child::input" )

  def random_uncheck
    @number= rand(0...5)
    case @number
    when 1 then uncheck_chk_option1
    when 2 then uncheck_chk_option2
    when 3 then uncheck_chk_option3
    when 4 then uncheck_chk_option4
    end
  end

end