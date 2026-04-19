# Raccourcis personnalisés | custom

## Fichiers | files
    <leader>ff    Fuzzy find fichiers
    <leader>fg    Grep dans le projet
    <leader>e     File explorer (neo-tree)
    <C-p>         Find files (telescope)

## Git | git
    <leader>gg    Lazygit (float)
    <leader>gd    Lazydocker (float)
    <leader>gb    Git blame ligne

## Sessions | sessions
    <C-f>         Sessionizer (switch projet)
    <prefix>?     Ce cheatsheet

## Tmux | tmux
    C-h/j/k/l       Naviguer entre panes (tmux + neovim seamless)
    C-f             Sessionizer — fuzzy switch entre projets
    <prefix>s       Liste interactive des sessions
    <prefix>w       Overview toutes les fenetres
    <prefix>n/p     Fenetre suivante / precedente
    <prefix>c       Nouvelle fenetre
    <prefix>|       Split vertical
    <prefix>-       Split horizontal
    <prefix>$       Renommer la session courante
    <prefix>d       Detacher la session (continue en arriere-plan)
    <prefix>:kill-session   Fermer la session courante
    <prefix>:kill-server    Fermer toutes les sessions

## Workmux | workmux
    workmux add <name>      Créer un worktree + window tmux
    workmux remove <name>   Supprimer worktree + branch sans merger
    workmux rename <name>   Renommer worktree + window
    workmux merge <name>    Merger la branch + cleanup
    workmux open <name>     Ouvrir une window pour un worktree existant
    workmux close <name>    Fermer la window (garde le worktree)
    workmux resurrect       Restaurer les windows après un crash tmux
    workmux dashboard       TUI dashboard de tous les agents actifs
    workmux sidebar         Toggle panneau live de statut dans tmux  (<prefix>S)
    workmux list            Lister tous les worktrees
    workmux status          Statut des agents par worktree
    workmux send <msg>      Envoyer un prompt à l'agent en cours
    workmux setup           Configurer les hooks et skills

## Rails | rails
    gf              Sauter au fichier sous le curseur (model, controller...)
    :Emodel         Ouvrir un model         ex: :Emodel user
    :Econtroller    Ouvrir un controller    ex: :Econtroller sessions
    :Eview          Ouvrir une view
    :Emigration     Ouvrir une migration
    :Rserver        Lancer rails server
    :Rgenerate      Rails generate

## Divers | misc
    <C-s>         Sauvegarder
    <S-h>/<S-l>   Buffer precedent/suivant
    <leader>gg    Lazygit
