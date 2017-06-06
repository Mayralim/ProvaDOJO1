Dado(/^que eu esteja logado no site Orangehrm$/) do
  visit('http://opensource.demo.orangehrmlive.com/')
  fill_in('txtUsername', :with=> 'Admin')
  fill_in('txtPassword', :with=> 'admin')
  click_button'btnLogin'
end

Quando(/^selecionar um Funcionário$/) do
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
  find(:xpath,'//*[@id="resultTable"]/tbody/tr[2]/td[2]/a').click
end

Quando(/^editar os dados do Funcionario$/) do
  click_button('btnSave')
  fill_in('personal_txtEmpFirstName', :with=>'Leonardo')
  fill_in('personal_txtEmpMiddleName', :with=>'Melo')
  fill_in('personal_txtEmpLastName', :with=>'Sanchez')
  choose('personal_optGender_1')
  select('Married', :from=>'personal_cmbMarital')
  select('Brazilian', :from=>'personal_cmbNation')
  fill_in('personal_DOB', :with=>'1986-05-24')
  click_button('btnSave')
end

Então(/^Funcionario deve ser atualizado com sucesso$/) do
  assert_text('Personal Details') 
end