module AdditionalContactDetails

  def self.included(base)
    base.one_to_many :contact_detail

    base.def_nested_record(:the_property => :additional_contact_details,
                           :contains_records_of_type => :contact_detail,
                           :corresponding_to_association => :contact_detail)
  end

end
