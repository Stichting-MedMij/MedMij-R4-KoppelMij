Profile: KoppelMij-Task
Parent: Task
Id: Koppelmij-Task
Description: "The (FHIR) Task (resource) describes an eHealth task, that is, an eHealth activity assigned to a patient."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
^purpose = ""
* insert Copyright
* . 
  * ^short = "Task"
  * ^alias = "Task"
* insert Origin
* . 
^definition = "An eHealth activity assigned to a patient."
* extension contains
    KT2_Instantiates named instantiates 0..*
* extension[instantiates] ^short = "Reference to ActivityDefinition"
  * ^definition = "Reference to the ActivityDefinition, which conforms to the KT2_ActivityDefinition profile."
  * ^comment = "Use this extension to refer to the ActivityDefinition it instantiates."
  * ^isModifier = false
* instantiatesCanonical only Canonical(KT2_ActivityDefinition)
  * ^comment = "As of 2023-11-02 this element is no longer used in Koppeltaal 2.0. Use the extension `instantiates` instead."
* partOf only Reference(MedMij-Task)
* code from $koppeltaal-task-code-vs (preferred)
* code ^comment = "See [Koppeltaal Implementation Guide](https://simplifier.net/guide/koppeltaal/Home/Profile-Specific-Notes/Task.page.md?version=current) for more information on the ValueSet"
* for 1..
* for only Reference(http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient)
  * ^definition = "The patient who benefits from the performance of the service specified in the task."
  * ^comment = "In Koppeltaal this element always refers to the patient for whom the task is intended."
  * ^requirements = "Used to track tasks outstanding for a beneficiary.  Do not use to track the task owner or creator (see owner and creator respectively).  This _can_ also affect access control."
* requester only Reference(http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)
 * ^comment = """
    Each occurrence of the zib HealthProfessional is normally represented by _two_ FHIR resources: a PractitionerRole resource (instance of [nl-core-HealthProfessional-PractitionerRole](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)) and a Practitioner resource (instance of [nl-core-HealthProfessional-Practitioner](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner)). The Practitioner resource is referenced from the PractitionerRole instance. For this reason, sending systems should fill the reference to the PractitionerRole instance here, and not the Practitioner resource. Receiving systems can then retrieve the reference to the Practitioner resource from that PractitionerRole instance.
    
    In rare circumstances, there is only a Practitioner instance, in which case it is that instance which will be referenced here. However, since this should be the exception, the nl-core-HealthProfessional-Practitioner profile is not explicitly mentioned as a target profile.
    """
  * ^definition = "In Koppeltaal this element contains a reference to the person requesting the eHealth Task"
* owner 1..
* owner only Reference(http://nictiz.nl/fhir/StructureDefinition/nl-core-CareTeam or http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole or http://nictiz.nl/fhir/StructureDefinition/nl-core-ContactPerson)
  * ^definition = "Practitioner, CareTeam, RelatedPerson or Patient currently responsible for task execution."
  * ^comment = "In Koppeltaal the patient is usually the person who executes the task.\r\n\r\nNote, this element is not intended to be used for access restriction. That is left to the relevant applications.\r\n\r\nEach occurrence of the zib HealthProfessional is normally represented by _two_ FHIR resources: a PractitionerRole resource (instance of [nl-core-HealthProfessional-PractitionerRole](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)) and a Practitioner resource (instance of [nl-core-HealthProfessional-Practitioner](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner)). The Practitioner resource is referenced from the PractitionerRole instance. For this reason, sending systems should fill the reference to the PractitionerRole instance here, and not the Practitioner resource. Receiving systems can then retrieve the reference to the Practitioner resource from that PractitionerRole instance.\r\n\r\nIn rare circumstances, there is only a Practitioner instance, in which case it is that instance which will be referenced here. However, since this should be the exception, the nl-core-HealthProfessional-Practitioner profile is not explicitly mentioned as a target profile."