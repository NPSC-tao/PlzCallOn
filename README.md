# README

まず環境構築として以下のものを準備してください。

    git
    githubアカウント
    Ruby v2.6.3
    node 10.16.0
    yarn (バージョン指定なし)

OSについて

    基本的にはlinux推奨ですが、macでもおそらく開発可能です。
    windowsを使っている方はdockerなどで仮想環境を構築するか、
    AWSのcloud9を使うと開発がスムーズになると思われます。
    
    特にcloud9はAWSアカウントだけあれば使用可能で、
    初めからRuby、Node、gitがインストール済みのため楽チンです！
    
環境が構築できたら

    環境構築が完了したら、このgithubのリポジトリを自身のPCへクローンしたのちに、
    それぞれの開発を開始してください。
    
    <アカウント認証システムHTML/CSS>
        ログイン画面のHTML
            app/views/users/sessions/new.html.erb
        新規登録画面のHTML
            app/views/users/registrations/new.html.erb
        
        <%= %>や<% %>というタグはヘルパータグと言って、rails特有のhtmlタグになっている。
        しかし、タグの表記の仕方が違うだけで、実際のHTMLと役割は変わらない。
        
        例）<%= form_tag() %> => <form>
            <%= link_to() %> => <a></a> など
            
        また、ヘルパータグにもcalss属性やid属性を指定することもできるため、ほぼ通常のhtmlと同じように
        扱うことができる。
        
        例）<%= link_to(), class: "クラス名" %>
            <%= link_to(), id: "id名" %>
    
    <検索画面、プロフィール閲覧ページVue.js>
        HTMLページ(template)
            app/views/app/index.html.erb
        Javascriptファイル
            app/javascript/pack/index.js
        Vueコンポーネント
            app/javascript/components/