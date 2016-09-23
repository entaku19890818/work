require 'nokogiri'
require 'mechanize'

agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari 4'
agent.get('https://aircamp.us/course/result') do |page|

  mypage = page.form_with(id: 'loginForm') do |form|
    # ログインに必要な入力項目を設定していく
    # formオブジェクトが持っている変数名は入力項目(inputタグ)のname属性
    form.userId = 'FA132010'
    form.password = 'soccer10'
  end.submit
        
        #HTML読み込み
        doc = Nokogiri::HTML(mypage.content.toutf8)
        
        #  

        puts doc.xpath("/html/body/div[contains(@id,'container')]/div[contains(@class,'container_box')]/div[contains(@id,'content')]/div[contains(@id,'main')]/div")



      # 絞り込んでTitle部分を抽出
	    score = node.xpath("./div[contains(@class,'result-box')]/div/div[contains(@class,'score-result')]/p[contains(@class,'score')]/text()")      
      # 絞り込んで再生数に当たる部分を抽出      
             
        puts score 
        # 表示形式に整形
      puts "\n———————————————–\n"

  
  
end