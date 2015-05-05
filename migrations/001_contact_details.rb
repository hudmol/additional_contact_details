require 'db/migrations/utils'

Sequel.migration do

  up do

    create_editable_enum("contact_detail_type",
                         [
                          "phone",
                          "skype",
                          "email",
                          "facebook",
                          "twitter",
                          "web"
                         ])


    create_table(:contact_detail) do
      primary_key :id

      Integer :lock_version, :default => 0, :null => false
      Integer :json_schema_version, :null => false

      Integer :agent_contact_id, :null => false
      DynamicEnum :detail_type_id, :null => false
      String :type_qualifier, :null => true
      String :detail, :null => false

      apply_mtime_columns
    end


    alter_table(:contact_detail) do
      add_foreign_key([:agent_contact_id], :agent_contact, :key => :id)
    end

  end

  down do
  end

end
