# frozen_string_literal: true

class LinkToPreview < VitrailPreview
  # @!group Levels
  # Links let users go somewhere.
  # `vt_link_to works` like the ActionView helper `link_to`
  # See [documentation](https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to)
  def default = vt_link_to("default", "/some/path")
  def primary = vt_link_to("Primary link", "/some/path", variant: :primary)
  def secondary = vt_link_to("Secondary link", "/some/path", variant: :secondary)
  def outline = vt_link_to("Outline", "some/path", variant: :outline)
  def ghost = vt_link_to("Ghost", "some/path", variant: :ghost)
  #@!endgroup

  def with_block
    render_with_template
  end

  def with_custom_attributes
    vt_link_to("I have a data-controller", "some/path", variant: :primary, data: { controller: "my-controller" })
  end
end
