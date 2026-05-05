---
name: pretto-linear-kickoff
description: Use at the start of a pretto work session to list the user's Linear issues (Todo / In Progress) grouped by project > milestone > issue > sub-issue, then ask what to work on.
---

# Kickoff

Affiche les issues Linear assignées à l'utilisateur courant, organisées par contexte, et demande sur quoi travailler.

## Étapes

1. **Trouver l'utilisateur courant** — utilise `list_users` et filtre sur "Olivier" pour obtenir son ID Linear.

2. **Lister les issues** — appelle `list_issues` avec :
   - `assigneeId` = l'ID trouvé à l'étape 1
   - États : `Todo` et `In Progress` (et `Ready` si présent dans l'équipe)
   - Inclure les sous-issues (parent/children)

3. **Grouper dans cet ordre** :
   ```
   Projet > Milestone > Issue > Sous-issue
   ```
   - Les issues sans projet vont dans `(Sans projet)`
   - Les issues sans milestone vont directement sous le projet

4. **Afficher** dans ce format :

   ```
   ## [Nom du projet]
   ### [Milestone]
   - FIN-123 Titre de l'issue
     - FIN-124 Sous-issue

   ## (Sans projet)
   - FIN-456 Titre
   ```

5. **Demander** : "Sur quoi on attaque ?"

## Notes

- Ne pas lister les issues `completed`, `canceled` ou `backlog`
- Si une issue a des sous-issues assignées à l'utilisateur, les afficher indentées sous la parente
- Trier par priorité décroissante à l'intérieur de chaque groupe (urgent → no priority)
