// All RuleSets used in KoppelMij

RuleSet: Origin
* extension contains
    KT2_ResourceOrigin named resource-origin 0..*
* extension[resource-origin] ^isModifier = false

RuleSet: PublisherAndContactMedMij
* ^publisher = "MedMij"
* ^contact.name = "MedMij"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "info@medmij.nl"
* ^contact.telecom.use = #work

RuleSet: Copyright
* ^copyright = "Copyright and related rights waived via CC0, https://creativecommons.org/publicdomain/zero/1.0/. This does not apply to information from third parties, for example a medical terminology system. The implementer alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize third party IP in connection with the specification or otherwise."

RuleSet: DefaultNarrative
* ^text.status = #empty
* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No narrative is provided for definitional resources. A human-readable rendering can be found in the implementation guide(s) where this resource is used.</div>"

RuleSet: PublisherAndContactVZVZ
* ^publisher = "VZVZ"
* ^contact.name = "VZVZ"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "standaardisatie@vzvz.nl"
* ^contact.telecom.use = #work
* ^copyright = "VZVZ"
* ^jurisdiction = urn:iso:std:iso:3166#NL "Netherlands" 
* ^language = urn:ietf:bcp:47#nl-NL

RuleSet: LanguageNL
* language = urn:ietf:bcp:47#nl-NL

RuleSet: PublisherAndContactHL7
* ^publisher = "HL7 International / FHIR Infrastructure"
* ^contact.name = "HL7 International / FHIR Infrastructure"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@lists.HL7.org"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fiwg"
* ^jurisdiction = $Jurisdiction#001 "World" 