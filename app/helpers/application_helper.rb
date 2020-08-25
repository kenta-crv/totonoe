module ApplicationHelper
  def default_meta_tags
    {
      site: "介護施設・老人ホームを知るなら｜介護の里",
      title: "<%= yield(:title) || eatery-japan %>" ,
      description: "介護施設・老人ホームを知るなら介護の里",
      keywords:    "介護施設,老人ホーム",
      canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8",
      #icon: [href: image_url('favicon.ico')]
      # OGPの設定をしておくとfacebook, twitterなどの投稿を見た目よくしてくれます。
    }
  end
end
