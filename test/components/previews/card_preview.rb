# frozen_string_literal: true

class CardPreview < VitrailPreview
  def standard
    vt_card { "Simple card" }
  end

  def with_title
    render_with_template(template: "card_preview/with_title")
  end

  def with_description
    render_with_template
  end

  def with_footer
    render_with_template
  end

  def with_custom_classes
    vt_card(class: "bg-red-100 border-red-200 text-red-800") { "Something went wrong" }
  end
end
