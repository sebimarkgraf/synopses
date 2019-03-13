Branch-Management
=================
- Pro Zusammenfassung ein eigener Branch auf dem alle Commits stattfinden
- Branchname entspricht dem (ggf. abgekürzten) Namen der Vorlesung
- Korrekturen und Reviews finden auf dem eigenen Branch statt
- Autor der Zusammenfassung ist für Merging zuständig
- Rebasing auf master wenn angebracht (z.B um aktuelle orga-Commits zu erhalten)

Commit Messages
===============
- Format: $KÜRZEL: $MESSAGE
- Kürzel wird mit dem ersten Commit einer neuen Zusammenfassung festgelegt, entspricht im Zweifelsfall dem Branch-Namen, immer komplett lowercase
- "orga"-Kürzel für alles, was keine einzelne Zusammenfassung betrifft
- Message beginnt mit einem Großbuchstaben und endet ohne einen Punkt (vgl. automatisch generierte Merge-Commits)

Dokumentaufbau
==============
- TeX-File, welches nach der Vorlesung benannt ist (z.B robotik.tex), für die Präambel und das Dokument-Setup
- Einzelne Sections werden in eigene Dateien abgelegt, welche nach dem Section-Titeln benannt und per \include eingebunden werden
- Jede neue Zusammenfassung muss in der build.sh eingetragen werden
- Sections, Subsections etc. sollten mit einem eindeutigen \label in der nächsten Zeile versehen und die Zeile davor mit einem % beendet werden
- Exakte Umsetzung des Dokuments von der Vorlesung abhängig, wird vom Autor entschieden
- Änderungen an Dokumenten müssen sich der bisherigen Form anpassen, bspw. Wahl von $ oder \[\] für den Mathe-Modus

README
======
- Jede Zusammenfassung muss von ihrem Autor im richtigen Abschnitt der README auf master vermerkt und ggf. aktualisiert werden
- Jede neue, unfertige Zusammenfassung ist "In Arbeit"
- Sobald die Erstversion einer Zusammenfassung fertiggestellt ist, wird sie als "In Erstfassung verfügbar" vermerkt
- Sobald keine Änderungen einer Erstfassung mehr zu erwarten sind, gilt diese als "Fertige Fassung"