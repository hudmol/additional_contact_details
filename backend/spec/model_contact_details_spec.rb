require 'spec_helper'
require_relative 'factories'

describe 'Contact Details model' do

  it "can add a bunch of contact details to an agent_contact" do
    detail1 = build(:json_contact_detail)
    detail2 = build(:json_contact_detail)
    contact = build(:json_agent_contact, :additional_contact_details => [detail1, detail2])
    agent = AgentPerson.create_from_json(build(:json_agent_person, :agent_contacts => [contact]))

    AgentPerson[agent[:id]].agent_contact[0].contact_detail.length.should eq(2)
    AgentPerson[agent[:id]].agent_contact[0].contact_detail[0].detail.should eq(detail1[:detail])
  end


end
