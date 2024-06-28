# frozen_string_literal: true

class TablePreview < VitrailPreview
  def standard
    render_with_template(locals: { users: })
  end

  # Table with link on each row
  # ----------------
  # Usage:
  # ```ruby
  # table.with_row(link_to: your_path_helper) do |row|
  # ```
  def with_link
    render_with_template(locals: { users: })
  end

  private

  def users
    @users ||= [
      OpenStruct.new(id: 1, name: "Alice", email: "alice@example.com"),
      OpenStruct.new(id: 2, name: "Bob", email: "bob@example.com"),
      OpenStruct.new(id: 3, name: "Charlie", email: "charlie@example.com"),
    ]
  end

  def long_list_users
    @long_list_users ||= 10.times.map do |i|
      OpenStruct.new(id: i + 1, name: "User #{i + 1}", email: "user#{i + 1}@example.com")
    end
  end
end
