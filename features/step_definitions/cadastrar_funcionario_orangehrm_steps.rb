Dado(/^que eu esteja no site Orangehrm$/) do
  visit('http://opensource.demo.orangehrmlive.com/')
end 

Quando(/^logar no sistema$/) do
  fill_in('txtUsername', :with=> 'Admin')
  fill_in('txtPassword', :with=> 'admin')
  click_button'btnLogin'
end

Quando(/^preencher os dados do Funcionario$/) do
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
  fill_in('firstName', :with=> 'Leandro')
  fill_in('lastName', :with=> 'Sanchez')
  click_button('btnSave')
end

Então(/^Funcionario deve ser cadastrado com sucesso$/) do
  assert_text('Personal Details')
end
