# frozen_string_literal: true

class TitlePreview < VitrailPreview
  # @param level select { choices: [1, 2, 3, 4] }
  # @param title
  def playground(level: 1, title: "Header")
    vt_title(level: level.to_i) { title }
  end

  def level_1
    vt_title { "Header 1" }
  end

  def level_2
    vt_title(level: 2) { "Header 2" }
  end

  def level_3
    vt_title(level: 3) { "Header 3" }
  end

  def level_4
    vt_title(level: 4) { "Header 4" }
  end

  def with_custom_classes
    vt_title(class: "text-red-600") { "Dashboard" }
  end

  def with_data_attributes
    vt_title(data: { controller: "dashboard" }) { "Dashboard" }
  end

  def with_id
    vt_title(id: "dashboard-title") { "Dashboard" }
  end
end
