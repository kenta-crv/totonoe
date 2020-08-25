module ApplicationHelper
  def default_meta_tags
    {
      site: "エンディングから葬儀まで知るなら｜トトノエ",
      title: "<%= yield(:title) || トトノエ %>" ,
      description: "エンディングから葬儀まで知るならトトノエ",
      keywords:    "葬儀,エンディング",
      canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8",
      #icon: [href: image_url('favicon.ico')]
      # OGPの設定をしておくとfacebook, twitterなどの投稿を見た目よくしてくれます。
    }
  end
end
