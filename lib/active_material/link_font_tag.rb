module ActiveMaterial::LinkFontTag
  def build_active_admin_head
    within @head do
      text_node(tag(:link, href: 'https://fonts.googleapis.com/css?family=Roboto:400,400i,500,700', rel: 'stylesheet'))
      super
    end
  end
end

ActiveAdmin::Views::Pages::Base.prepend ActiveMaterial::LinkFontTag