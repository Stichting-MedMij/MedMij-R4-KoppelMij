// Bundle with FHIR test instances in FSH format for Dental Care test scenario 1

Instance: KoppelMij-Task-
InstanceOf: Task
Description: "Example of a sub task, part of another task"
Usage: #example
* meta.profile = "http://koppeltaal.nl/fhir/StructureDefinition/KT2Task"
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a sub task, part of another task</div>"
* insert NLlang
* extension[0]
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/resource-origin"
  * valueReference = Reference(device-volledig)
    * type = "Device"
* extension[+]
  * url = $task-instantiates
  * valueReference = Reference(activitydefinition123)
    * type = "ActivityDefinition"
* identifier
  * system = "http://koppeltaal.nl/taskIdentifier"
  * value = "1234"
* partOf = Reference(task-overkoepelend)
* for = Reference(Patient/patient-volledige-naam-bsn)
  * type = "Patient"
* intent = #order
* priority = #routine
* code = $task-code#fulfill
* executionPeriod
  * start = "2023-01-20T08:25:05+01:00"
  * end = "2023-01-21T08:25:05+01:00"
* requester = Reference(practitioner-minimaal)
  * type = "Practitioner"
* owner = Reference(patient-volledige-naam-bsn)
  * type = "Patient"
* status = #ready
* authoredOn = "2023-01-19T08:25:05+01:00"
* lastModified = "2023-01-19T09:45:05+01:00"

Instance: KoppelMij-ActivityDefinition-
InstanceOf: KT2_ActivityDefinition
Title: "Piekermoment (md)"
Description: "Example of an ActivityDefinition that defines the use of a journal"
Usage: #example
* meta.profile = "http://koppeltaal.nl/fhir/StructureDefinition/KT2ActivityDefinition"
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ActivityDefinition that defines the use of a journal</div>"
* insert NLlang
* extension[0]
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/KT2EndpointExtension"
  * valueReference = Reference(endpoint123)
    * type = "Endpoint"
* extension[+]
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/KT2PublisherId"
  * valueId = "ID1234-001"
* url = "https://int-381-kt2-sprint-7.minddistrict.dev/catalogue/6bea89a73b3d48d0963d627d93d071c2"
* identifier
  * use = #official
  * system = "http://ns.minddistrict.com/content/id"
  * value = "6bea89a73b3d48d0963d627d93d071c2"
* version = "2022-12-20.19:00:123"
* name = "Pieker_6bea89a73b3d48d0963d627d93d071c2"
* title = "Piekermoment (md)"
* subtitle = "voor jongeren"
* status = #active
* description = """In dit dagboek wordt per piekermoment geregistreerd over welk onderwerp werd gepiekerd, 
welke piekergedachten er voorkwamen en wat hielp om te stoppen met piekeren. """

Instance: endpoint123
InstanceOf: Endpoint
Description: "Example of an Endpoint as used in Koppeltaal"
Usage: #example
* meta.profile = "http://koppeltaal.nl/fhir/StructureDefinition/KT2Endpoint"
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an Endpoint as used in Koppeltaal</div>"
* insert NLlang
* status = #active
* connectionType = $koppeltaal-endpoint-connection-type#hti-smart-on-fhir
* name = "nu.nl"
* payloadType = $endpoint-payload-type#any
* address = "https://nu.nl"