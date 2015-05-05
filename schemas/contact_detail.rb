{
  :schema => {
    "$schema" => "http://www.archivesspace.org/archivesspace.json",
    "version" => 1,
    "type" => "object",
    "properties" => {
      "detail" => {"type" => "string", "maxLength" => 255, "minLength" => 1, "ifmissing" => "error"},
      "detail_type" => {"type" => "string", "minLength" => 1, "ifmissing" => "error", "dynamic_enum" => "contact_detail_type"},
      "type_qualifier" => {"type" => "string", "maxLength" => 255},
    },
  },
}
