# CDS Personal Notes

> Most of this is in german. It's only intended for personal use.

# Table of Contents

## Day 1 Notes

01.[Service Value Stream](#service-value-stream)<br>
02.[Work Culture](#work-culture)<br>
04.[Competence Profiles](#competence-profiles)<br>
05.[Shift Left](#shift-left)<br>

## Day 2 Notes
06.[Personnel Planning](#personnel-planning)<br>
07.[Continual Improvement & Continual Deployment (CI/CP)](#continual-improvement--continual-deployment-cicp)<br>
08.[Value Streams](#value-streams)<br>
09.[ITIL Practices](#itil-practices)<br>
10.[Change Enablement](#change-enablement)<br>

## Day 3 Notes
> Coming Soon

> Easy way to remember the four dimensions of Service Management

<strong>VOIP</strong><br><br>
<strong>V</strong>alue Stream<br>
<strong>O</strong>organization<br>
<strong>I</strong>nformation and Technology<br>
<strong>P</strong>Partners and Suppliers<br>

## Service Value Stream

> Service Wertstrom ist eine Linie.

![Service Wertstrom](./_img/Day1_Service_Value_Stream.png)

![Service Value System](./_img/Day1_Service_Value_System.png)

Definition "Resilienz": Schnelle Wiederherstellung nach Fehlern und NICHT "Wiederstandsfähigkeit". Wird oft durcheinander gebracht. <br>

## Work Culture

![Work Culture](./_img/Day1_Work_Culture.png)

Zusammenarbeit = Gleiches Ziel <br>
SLA = Kooperatives Arbeiten (beide haben eigene Ziele)<br>

![Work Culture 2](./_img/Day1_Work_Culture2.png)

> Es kann gut sein bei manchen Themen zusammenzuarbeiten und bei andere "nur" zu kooperieren.

![Arten von Aufgaben](./_img/Day1_Work_Culture3.png)

Heuristische Aufgaben werden (wenn sie gut laufen) in der Regel in eine algorithmische Aufgabe umgebaut (Stichwort Automatisierung, Checkliste, Shift Left).

![Servant Leadership](./_img/Day1_Servant_Leadership.png)

## Competence Profiles

![Competence Profiles](./_img/Day1_Competence_Profiles.png)

Jede Rolle erfordert eine Kombination von Kompetenzen mit variierender Wichtigkeit.

### Beispiel KAT

- Kommunikation und Koordination sind sehr wichtig.
- Administrative Kompetenzen sind relativ wichtig.
- Technisches Wissen wird benötigt, ist aber weniger wichtig als K und A.
- Dies könnte das Profil eines Relationship Managers und Service Owners sein, der ein SLA entwirft.

### Beispiel TMA

- Technisches Wissen ist sehr wichtig.
- Kompetenzen im Methodendesign sind relativ wichtig.
- Administrative Kompetenzen sind ebenfalls erforderlich.
- Dies könnte das Profil eines Change Managers und Service Owners sein, der ein neues Change-Modell entwickelt.

![ITSM Competences](./_img/Day1_ITSM_Competences.png)

![ITSM Competences Continued](./_img/Day1_ITSM_Competences2.png)

Führung erfolgt in 4 Richtungen:

- Nach oben
- Nach unten
- Seitlich
- Sich selbst

![Competence Profiles](./_img/Day1_Competence_Profiles2.png)

Kompetenzprofile:

- T
- Phi
- Kamm

> IT ist eine Fertigungsstrasse

Spannendes Beispiel der Fertigungsstrasse von Toyata: Mitarbeiter des Kamm-Modells können anderen helfen ihre Dinge zu lösen und steigern so die Produktivität der Fertigung.

Reminder:

- Wertstrom: Löst ein Szenario.
- Prozess: EINE Sache erledigen (mehrere Prozesse ergeben Wertstrom)

### Mitarbeiterumfragen

> Net Promoter Score

![Net Promoter Score](./_img/Day1_Net_Promoter_Score.png)

Zusätzlich gibt es noch den ENPS (Employee Net Promoter Score): Gleiches Schema!

> Was bedeutet der Begriff Toil? First Tasks to Automate.

## Shift Left

![Shift Left Approach](./_img/Day1_Shift_Left.png)

![Shift Left Zeichnung](./_img/Day1_ShiftLeft_Visual.png)

> Investiere zuerst mehr Zeit in die frühe Planung um spätere Korrekturen zu vermeiden (je später je teurer!)

![Shift Left Levels](./_img/Day1_Shift_Left_Levels.png)

ITIL kennt keine weiteren Levels. In der Gartner Definition gibt es noch zwei weitere Levels:

![Shift Left Levels (Gartner)](./_img/Day1_Shift_Left_Levels_Gartner.png)

Die letzte Erweiterung kommt vom Trainer:

![Shift Left Level (Trainer)](./_img/Day1_Shift_Left_Levels_Trainer.png)

# Day 2

- Definition "Proaktives Problemmanagement" -> Es ist noch KEIN Incident passiert.

Agiler Ansatz: Backlog -> Es wird von Monat zu Monat umgesetzt, wann es fertig ist weiss aber keiner.

## Personnel Planning

![Personalplanung](./_img/Day2_Personnel_Planning.png)

![Output vs. Outcome](./_img/Day2_Output_vs_Outcome.png)

![Cynefil Model](./_img/Day2_Cynefin_Model.png)

Wir lernen über ein Führungskräfe-Assessement: Ich treffe nur neue Entscheidungen wenn sich meine Informationen geändert haben auf deren Grundlage ich eine Entscheidung treffe.

![Robotergesteuerte Prozessautomatisierung](./_img/Day2_Robotic_Automation.png)

## Continual Improvement & Continual Deployment (CI/CP)

![CI/CP Zeichnung](./_img/Day2_CICD_Concept.png)

![CI/CP Defintion ITIL](./_img/Day2_CICD_ITIL.png)

## Value Streams

![Value Streams](./_img/Day2_SVS_Definitions.png)

![Value Stream for a new Service](./_img/day2_SVS_NewStream)

## ITIL Practices

### Service Design Practice

![Service Design](./_img/Day2_Practice_ServiceDesign.png)

Recommendation by Trainer: Design Thinking Course.

![Design Thinking](Day2_Design_Thinking.png)

> Für jede Practice gilt: Ansatz und einzelner Durchlauf muss erfolgreich sein.

### Software Development and Management Practice

![Software Development and Management Practice](./_img/Day2_Practice_Devmgmt.png)

### Deployment Management Practice

![Deployment Management](./img/Day2_Deploymentmgmt.png)

### Release Management Practice

![Release Management](./_img/Day2_Releasemgmt.png)

### Service Validation and Testing Practice

![Service Validation and Testing](./_img/Day2_Practice_ServiceTesting.png)

> SAC = Service Acceptance Criteria

SAC sollte immer 2 Listen haben. Eine Liste für early life Support (SAC) und eine zweite Liste für Live/Vollbetrieb.

Beispiel: Ich fange 1 nur an wenn es keine großen Incidents mehr gibt. Liste 2= es existieren KEINE Incidents mehr.

Bei Ausgrenzung als Stakeholder gilt: PUSH-Verantwortung, hineinreklamieren bis man am Tisch sitzt.

![Service Validation and Testing 2](./img/Day2_Practice_ServiceTesting2.png)

- ORM = Bekannt implizit -> War nie definiert aber ist klar das mans mal versucht (Beispiel HR Lohnverrechnung was ist wenn da mal 0 Gehalt drinsteht oder -1) 
- ATI = Unbekannt -> Was passiert wenn ich einen Buchstaben eingebe statt ein Gehalt?
- ON = Software stürzt ab wenn ich chinesische Buchstaben eingebe.

## Change Enablement

![Change Enablement](image.png)