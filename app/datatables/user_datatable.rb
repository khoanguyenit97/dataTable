class UserDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      name: { source: "User.name" },
      email: { source: "User.email"}
    }
  end

  def data
    records.map do |user|
      {
        # example:
        id: user.id,
        name: user.name,
        email: user.email
      }
    end
  end

  def get_raw_records
    # insert query here
    User.all
  end

end
