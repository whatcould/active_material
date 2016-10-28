module ActiveMaterial::LinkFontTag
  def build_active_admin_head
    within @head do
      text_node(tag(:link, href: 'https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,800', rel: 'stylesheet'))
      super
    end
  end
end

ActiveAdmin::Views::Pages::Base.prepend ActiveMaterial::LinkFontTag