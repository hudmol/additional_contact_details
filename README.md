# additional_contact_details
An ArchivesSpace plugin that adds multiple additional contact details to agent_contact records

## How to install it

To install, just activate the plugin in your config/config.rb file by
including an entry such as:

     # If you have other plugins loaded, just add 'box_search' to
     # the list
     AppConfig[:plugins] = ['local', 'other_plugins', 'additional_contact_details']

And then clone the `additional_contact_details` repository into your
ArchivesSpace plugins directory.  For example:

     cd /path/to/your/archivesspace/plugins
     git clone https://github.com/hudmol/additional_contact_details.git

This plugin requires an update to your database. Before running it for the first time run the database migration.
In dev mode it looks like this:

     build/run db:migrate


## How it works

When editing an Agent, if you add a Contact Details nested record, you will see an `Add Additional Detail` button.
Click this to add a new detail. Each detail has a `Type` dropdown, an optional `Qualifier`, and the actual `Detail`.

The `Type` dropdown can be managed through the `System > Manage Controlled Value Lists` page.
You will find it in the list as `Additional Contact Detail Type`.

These `Additional Details` do not affect imported or exported data.

