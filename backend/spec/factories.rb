require 'factory_girl'

FactoryGirl.define do

  factory :json_contact_detail, class: JSONModel(:contact_detail) do
    detail_type { sample(JSONModel(:contact_detail).schema['properties']['detail_type']) }
    detail { generate(:alphanumstr) }
  end

end
