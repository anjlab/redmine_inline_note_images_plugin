class Hooks < Redmine::Hook::ViewListener

  #def view_issues_history_journal_bottom journal
  #  content_tag("p", "Custom content added to the left #{journal[:journal].inspect}")
  #end

  render_on :view_issues_history_journal_bottom,
            partial: 'hooks/inline_image_hook/inline_images_paste'#,
            #locals: context
end