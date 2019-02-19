class CheckBoxesPage
  include PageObject
  include DataMagic

  #button(:btn_check_all, id:'check1')
  button(:btn_check_all, value:'Check All' )
  button(:btn_uncheck_all, value:'Uncheck All' )

  checkbox(:chk_option1, value:'Option 1' )
  checkbox(:chk_option2, value:'Option 2' )
  checkbox(:chk_option3, value:'Option 3' )
  checkbox(:chk_option4, value:'Option 4' )



end