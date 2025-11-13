class AddCreatedByToAudits < ActiveRecord::Migration[7.1]
  def change
    add_column :audits, :created_by, :integer
  end
end
