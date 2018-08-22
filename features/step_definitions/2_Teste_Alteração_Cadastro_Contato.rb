Dado("que esteja na home do site SuiteCRM") do
	visit 'https://demo.suiteondemand.com/index.php?action=Login&module=Users&login_module=Home&login_action=index'
	fill_in 'Username', :with=>'will'
	fill_in "Password", :with => "will"
	click_button('bigbutton')
end

Quando("alterar os campos do contato") do
  find('li.quickcreatetop').click
  find("a[href='index.php?module=Contacts&action=EditView&return_module=Contacts&return_action=DetailView']").click
  find("a[href='?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DContacts%26action%3Dindex%26return_module%3DContacts%26return_action%3DDetailView']").click
  #sleep(5)
  find(:xpath, "//a[@title='Filter']", match: :first).click
  fill_in 'search_name_basic', :with=>'Teste98800054'
  click_button('search_form_submit')
  #sleep(3)
  find('a', text: 'Teste98800054 Teste3333').click
   #sleep(3)
  find('a', text: 'ACTIONS').click
  find('#edit_button').click
  fill_in "primary_address_city", :with=> "São Paulo"
  fill_in "description", :with=>"Dojo 1 Alteração"
    #//a[contains(text(), 'Teste98800054')]
  #find('a', text: 'Teste98800054 Teste3333').click
  #find("[href='?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DContacts%26offset%3D1%26stamp%3D1534782541023556200%26return_module%3DContacts%26action%3DDetailView%26record%3D9c24db7c-bcc7-5fce-7123-5b7aec6abaf4']").click
  #find('li.actionmenulink').click
 end
sleep(3)
Entao("validar que todas as informações foram salvas com sucesso") do
  find("#SAVE", match: :first).click
end