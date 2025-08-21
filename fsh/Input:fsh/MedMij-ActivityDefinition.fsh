Profile: KoppelMij-ActivityDefinition
Parent: ActivityDefinition
Id: KoppelMij-ActivityDefinition
Description: "The (FHIR) ActivityDefinition (resource) describes an eHealth activity that is available for assignment to a patient. When assigning an eHealth activity to a patient, an eHealth Task is created, in which sub-activities are included as contained resources that refer to the main task via Task.partOf."
* ^status = #draft
* insert PublisherAndContact
^purpose = ""
* . ^short = "Description of an eHealth activity"
* . ^comment = "The (FHIR) ActivityDefinition describes an eHealth activity available to assign to a patient. The assignment of an eHealth activity to a patient creates an eHealth Task (Task resource). This task can contain sub activities as contained resources which refer to the main task using the Task.partOf element."
* insert Origin
* . 
^definition = ""
* extension contains
    KT2_EndpointExtension named endpoint 1..* and
    KT2_PublisherId named publisherId 0..*
* extension[endpoint] ^short = "Endpoint to the service application"
  * ^definition = "Mandatory reference to the service application (endpoint) that provides the eHealth activity. Can be more than one endpoint."
* extension[publisherId] ^isModifier = false
* url 1..
* title 1..
* useContext
  * ^definition = "The context for the content of the eHealth activity"
  * ^comment = "E.g. the activity is targeted to a certain age group"
* topic from KoppeltaalDefinitionTopic_VS (extensible)
  * ^short = "E.g. Self-Treatment and Self-Assessment, etc."
  * ^definition = "Descriptive topics related to the content of the activity. The topic is used to indicate that the activity is intended or suitable for initialization by patients."
  * ^binding.description = "High-level categorization of the definition, used for indicating special patient initialised activities"