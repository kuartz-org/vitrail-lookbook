# frozen_string_literal: true

Rails.application.configure do
  config.view_component.preview_paths << Vitrail::Engine.root.join("test/components/previews")
  config.lookbook.preview_paths << Vitrail::Engine.root.join("test/components/previews")
  config.lookbook.page_paths = [Vitrail::Engine.root.join("test/components/docs")]
  config.lookbook.preview_layout = "vitrail/component_preview"
  config.view_component.preview_layout = "vitrail/component_preview"
  config.lookbook.project_name = "Vitrail"
  config.lookbook.project_logo = false
  config.lookbook.ui_favicon = false
  config.lookbook.preview_collection_label = "Components"
  config.lookbook.ui_theme = "zinc"
  config.lookbook.preview_inspector.drawer_panels = [:params, :notes, :source]
  config.lookbook.preview_embeds.policy = "ALLOWALL"
end
