# encoding: utf-8

もし /^"(.*?)"ページを表示する$/ do |page_name|
  case page_name 
  when "トップ"
    path = "/"
  when "about"
    path = "/about"
  when "contacts"
    path = "/contacts"
  end
  visit path # visit 仮想的にURLをアクセスする
end

ならば /^"(.*?)"と表示されていること$/ do |text|
  page.should have_content(text)
end
