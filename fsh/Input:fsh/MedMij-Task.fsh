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

Extension: KT2_Instantiates
Id: instantiates
Description: "Extension added to a Task to refer to the ActivityDefinition which is instantiated by this Task"
Context: Task
* ^url = "http://vzvz.nl/fhir/StructureDefinition/instantiates"
* ^status = #draft
* insert ContactAndPublisher
* value[x] 1..
* value[x] only Reference(KT2_ActivityDefinition)
  * ^short = "Reference to a KT2ActivityDefinition"
  * ^definition = "Use this reference rather than the element `Task.instantiatesCanonical` to refer to the ActivityDefinition which is instantiated by this Task."

Extension: KT2_ResourceOrigin
Id: resource-origin
Description: "Defines the author of the resource"
Context: "Account | ActivityDefinition | AdverseEvent | AllergyIntolerance | Appointment | AppointmentResponse | AuditEvent | Basic | BiologicallyDerivedProduct | BodyStructure | CapabilityStatement | CarePlan | CareTeam | CatalogEntry | ChargeItem | ChargeItemDefinition | Claim | ClaimResponse | ClinicalImpression | CodeSystem | Communication | CommunicationRequest | CompartmentDefinition | Composition | ConceptMap | Condition | Consent | Contract | Coverage | CoverageEligibilityRequest | CoverageEligibilityResponse | DetectedIssue | Device | DeviceDefinition | DeviceMetric | DeviceRequest | DeviceUseStatement | DiagnosticReport | DocumentManifest | DocumentReference | EffectEvidenceSynthesis | Encounter | Endpoint | EnrollmentRequest | EnrollmentResponse | EpisodeOfCare | EventDefinition | Evidence | EvidenceVariable | ExampleScenario | ExplanationOfBenefit | FamilyMemberHistory | Flag | Goal | GraphDefinition | Group | GuidanceResponse | HealthcareService | ImagingStudy | Immunization | ImmunizationEvaluation | ImmunizationRecommendation | ImplementationGuide | InsurancePlan | Invoice | Library | Linkage | List | Location | Measure | MeasureReport | Media | Medication | MedicationAdministration | MedicationDispense | MedicationKnowledge | MedicationRequest | MedicationStatement | MedicinalProduct | MedicinalProductAuthorization | MedicinalProductContraindication | MedicinalProductIndication | MedicinalProductIngredient | MedicinalProductInteraction | MedicinalProductManufactured | MedicinalProductPackaged | MedicinalProductPharmaceutical | MedicinalProductUndesirableEffect | MessageDefinition | MessageHeader | MolecularSequence | NamingSystem | NutritionOrder | Observation | ObservationDefinition | OperationDefinition | OperationOutcome | Organization | OrganizationAffiliation | Patient | PaymentNotice | PaymentReconciliation | Person | PlanDefinition | Practitioner | PractitionerRole | Procedure | Provenance | Questionnaire | QuestionnaireResponse | RelatedPerson | RequestGroup | ResearchDefinition | ResearchElementDefinition | ResearchStudy | ResearchSubject | RiskAssessment | RiskEvidenceSynthesis | Schedule | SearchParameter | ServiceRequest | Slot | Specimen | SpecimenDefinition | StructureDefinition | StructureMap | Subscription | Substance | SubstanceNucleicAcid | SubstancePolymer | SubstanceProtein | SubstanceReferenceInformation | SubstanceSourceMaterial | SubstanceSpecification | SupplyDelivery | SupplyRequest | Task | TerminologyCapabilities | TestReport | TestScript | ValueSet | VerificationResult | VisionPrescription"
* ^url = "http://koppeltaal.nl/fhir/StructureDefinition/resource-origin"
* ^version = "0.8.0"
* ^status = #draft
* ^date = "2023-01-24"
* insert ContactAndPublisher
* . ..1
* . ^definition = "Defines the author of the resource."
* . ^comment = "Part of the authorisation model. Upon creation of the resource this extension is set to the device that created it."
* value[x] only Reference(KT2_Device)

ValueSet: KoppeltaalTaskCode_VS
Id: koppeltaal-task-code
Title: "Koppeltaal Task Code"
Description: "ValueSet for Task.code"
* ^name = "KoppeltaalTaskCode_ValueSet"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "http://vzvz.nl/fhir/ValueSet/koppeltaal-task-code"
* ^identifier.use = #official
* ^identifier.value = "http://vzvz.nl/fhir/ValueSet/koppeltaal-task-code"
* ^status = #active
* ^experimental = false
* ^date = 2024-07-15T12:00:00+02:00
* ^experimental = false
* insert ContactAndPublisher
* include codes from system KoppeltaalTaskCode
* include codes from system http://hl7.org/fhir/CodeSystem/task-code

