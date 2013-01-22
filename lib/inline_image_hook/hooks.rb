class Hooks < Redmine::Hook::ViewListener

  #def view_issues_history_journal_bottom journal
  #  content_tag("p", "Custom content added to the left #{journal[:journal].inspect}")
  #end

  render_on :view_issues_history_journal_bottom,
            :partial => 'hooks/inline_image_hook/inline_images_paste'#,
            #locals: context

  def view_layouts_base_html_head(context={})
    if context[:controller] && (context[:controller].is_a?(IssuesController))
      return stylesheet_link_tag("inline_images.css", :plugin => "redmine_inline_note_images_plugin", :media => "screen")
    else
      return ''
    end
  end
end
