Dado("que esteja na tela de cadastro do SuiteCRM") do
	visit 'https://demo.suiteondemand.com/index.php?action=Login&module=Users&login_module=Home&login_action=index '
	fill_in 'Username', :with=>'will'
	fill_in "Password", :with => "will"
	click_button('bigbutton')
end

Quando("salvar todos os dados necessários para cadastro") do
    #binding.pry
   find('li.quickcreatetop').click
   find("a[href='index.php?module=Contacts&action=EditView&return_module=Contacts&return_action=DetailView']").click
   #find_field("selected").find("option[value='Mr.']").click
   #find_by_id('salutation').find("option[value='Mr.']").select_option
   fill_in "first_name", :with=>"Teste98800054"
   fill_in "last_name", :with=>"Teste3333"
   fill_in "phone_work", :with=>"1120555555"
   fill_in "phone_mobile", :with=>"11986555555"
   fill_in "title", :with=>"Tecnologia"
   fill_in "department", :with=>"TI"
   fill_in "account_name", :with=>"ADM TI"
   fill_in "Contacts0emailAddress0", :with=>"Tecnologia@testeTI.com.br"
   fill_in "primary_address_street", :with=>"Alameda Tambore"
   fill_in "primary_address_city", :with=> "Barueri"
   fill_in "primary_address_state", :with=>"Sao Paulo"
   fill_in "primary_address_country", :with=>"Brasil"
   fill_in "description", :with=>"Dojo 1 Cadastro"
  end

sleep(3)
Entao("validar que um novo contato foi cadastrado") do
  find("#SAVE", match: :first).click
end
