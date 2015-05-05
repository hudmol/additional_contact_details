class ContactDetail < Sequel::Model(:contact_detail)
  include ASModel
  corresponds_to JSONModel(:contact_detail)

  set_model_scope :global
end
