--[[-----------------------------------------------------------------------
English (example) language file
---------------------------------------------------------------------------

This is the english language file. The things on the left side of the equals sign are the things you should leave alone
The parts between the quotes are the parts you should translate. You can also copy this file and create a new language.

= Warning =
Sometimes when DarkRP is updated, new phrases are added.
If you don't translate these phrases to your language, it will use the English sentence.
To fix this, join your server, open your console and enter darkp_getphrases yourlanguage
For English the command would be:
    darkrp_getphrases "en"
because "en" is the language code for English.

You can copy the missing phrases to this file and translate them.

= Note =
Make sure the language code is right at the bottom of this file

= Using a language =
Make sure the convar gmod_language is set to your language code. You can do that in a server CFG file.
---------------------------------------------------------------------------]]

local my_language = {
    need_admin = "Vous avez besoin des privilèges d'administrateur pour pouvoir %s",
    need_sadmin = "Vous avez besoin des privilèges de super administrateur pour pouvoir %s",
    no_privilege = "Vous n'avez pas les privilèges nécessaires pour effectuer cette action",
    no_jail_pos = "Aucune position de prison",
    invalid_x = "%s invalide ! %s",

    -- Menu F1
    f1ChatCommandTitle = "Commandes de chat",
    f1Search = "Rechercher...",

    -- Concernant l'argent :
    price = "Prix : %s%d",
    priceTag = "Prix : %s",
    reset_money = "%s a réinitialisé l'argent de tous les joueurs !",
    has_given = "%s vous a donné %s",
    you_gave = "Vous avez donné %s à %s",
    npc_killpay = "%s pour avoir tué un PNJ !",
    profit = "profit",
    loss = "perte",
    Donate = "Donner",
    you_donated = "Vous avez donné %s à %s !",
    has_donated = "%s a donné %s !",

    -- Compatibilité rétroactive
    deducted_x = "%s%d déduit",
    need_x = "Besoin de %s%d",

    deducted_money = "%s déduit",
    need_money = "Besoin de %s",

    payday_message = "Jour de paie ! Vous avez reçu %s !",
    payday_unemployed = "Vous n'avez pas reçu de salaire car vous êtes au chômage !",
    payday_missed = "Jour de paie manqué ! (Vous êtes en prison)",

    property_tax = "Taxe foncière ! %s",
    property_tax_cant_afford = "Vous ne pouvez pas payer les taxes ! Votre propriété vous a été retirée !",
    taxday = "Jour d'impôt ! %s%% de vos revenus ont été pris !",

    found_cheque = "Vous avez trouvé un chèque de %s%s émis à votre nom par %s.",
    cheque_details = "Ce chèque est émis au nom de %s.",
    cheque_torn = "Vous avez déchiré le chèque.",
    cheque_pay = "Montant : %s",
    signed = "Signé : %s",

    found_cash = "Vous avez ramassé %s%d !", -- Compatibilité rétroactive
    found_money = "Vous avez ramassé %s !",

    owner_poor = "Le propriétaire de %s est trop pauvre pour subventionner cette vente !",

    -- Police
    Wanted_text = "Recherché !",
    wanted = "Recherché par la police !\nRaison : %s",
    youre_arrested = "Vous avez été arrêté. Temps restant : %d secondes !",
    youre_arrested_by = "Vous avez été arrêté par %s.",
    youre_unarrested_by = "Vous avez été libéré par %s.",
    hes_arrested = "%s a été arrêté pour %d secondes !",
    hes_unarrested = "%s a été libéré de prison !",
    warrant_ordered = "%s a ordonné un mandat de perquisition pour %s. Raison : %s",
    warrant_request = "%s demande un mandat de perquisition pour %s\nRaison : %s",
    warrant_request2 = "Demande de mandat envoyée au maire %s !",
    warrant_approved = "Mandat de perquisition approuvé pour %s !\nRaison : %s\nOrdonné par : %s",
    warrant_approved2 = "Vous pouvez maintenant perquisitionner sa maison.",
    warrant_denied = "Le maire %s a refusé votre demande de mandat de perquisition.",
    warrant_expired = "Le mandat de perquisition pour %s a expiré !",
    warrant_required = "Vous avez besoin d'un mandat pour pouvoir ouvrir cette porte.",
    warrant_required_unfreeze = "Vous avez besoin d'un mandat pour pouvoir dégeler cet objet.",
    warrant_required_unweld = "Vous avez besoin d'un mandat pour pouvoir dé-souder cet objet.",
    wanted_by_police = "%s est recherché par la police !\nRaison : %s\nOrdonné par : %s",
    wanted_by_police_print = "%s a rendu %s recherché, raison : %s",
    wanted_expired = "%s n'est plus recherché par la police.",
    wanted_revoked = "%s n'est plus recherché par la police.\nRévoqué par : %s",
    cant_arrest_other_cp = "Vous ne pouvez pas arrêter d'autres agents de la police !",
    must_be_wanted_for_arrest = "Le joueur doit être recherché pour pouvoir être arrêté.",
    cant_arrest_fadmin_jailed = "Vous ne pouvez pas arrêter un joueur emprisonné par un administrateur.",
    cant_arrest_no_jail_pos = "Vous ne pouvez pas arrêter de personnes car aucune position de prison n'est définie !",
    cant_arrest_spawning_players = "Vous ne pouvez pas arrêter des joueurs qui réapparaissent.",

    suspect_doesnt_exist = "Le suspect n'existe pas.",
    actor_doesnt_exist = "L'acteur n'existe pas.",
    get_a_warrant = "obtenir un mandat",
    remove_a_warrant = "retirer un mandat",
    make_someone_wanted = "rendre quelqu'un recherché",
    remove_wanted_status = "retirer le statut de recherché",
    already_a_warrant = "Il y a déjà un mandat de perquisition pour ce suspect.",
    not_warranted = "Il n'y a pas de mandat de perquisition pour cette personne.",
    already_wanted = "Le suspect est déjà recherché.",
    not_wanted = "Le suspect n'est pas recherché.",
    need_to_be_cp = "Vous devez faire partie de la police.",
    suspect_must_be_alive_to_do_x = "Le suspect doit être vivant pour %s.",
    suspect_already_arrested = "Le suspect est déjà en prison.",

    -- Joueurs
    health = "Santé : %s",
    job = "Emploi : %s",
    salary = "Salaire : %s%s",
    wallet = "Portefeuille : %s%s",
    weapon = "Arme : %s",
    kills = "Tués : %s",
    deaths = "Morts : %s",
    rpname_changed = "%s a changé son nom RP en : %s",
    disconnected_player = "Joueur déconnecté",
    player = "joueur",

    -- Équipes
    need_to_be_before = "Vous devez d'abord être %s pour pouvoir devenir %s",
    need_to_make_vote = "Vous devez faire un vote pour devenir %s !",
    team_limit_reached = "Impossible de devenir %s car la limite est atteinte",
    wants_to_be = "%s\nveut devenir\n%s",
    has_not_been_made_team = "%s n'a pas été fait %s !",
    job_has_become = "%s est devenu un %s !",

    -- Catastrophes
    meteor_approaching = "ATTENTION : Tempête de météores en approche !",
    meteor_passing = "Tempête de météores en cours.",
    meteor_enabled = "Les tempêtes de météores sont maintenant activées.",
    meteor_disabled = "Les tempêtes de météores sont maintenant désactivées.",
    earthquake_report = "Tremblement de terre signalé de magnitude %sMw",
    earthtremor_report = "Secousse sismique signalée de magnitude %sMw",

    -- Clés, véhicules et portes
    keys_allowed_to_coown = "Vous êtes autorisé à co-posséder ceci\n(Appuyez sur Recharger avec les clés ou appuyez sur F2 pour co-posséder)\n",
    keys_other_allowed = "Autorisé à co-posséder :",
    keys_allow_ownership = "(Appuyez sur Recharger avec les clés ou appuyez sur F2 pour permettre la propriété)",
    keys_disallow_ownership = "(Appuyez sur Recharger avec les clés ou appuyez sur F2 pour refuser la propriété)",
    keys_owned_by = "Possédé par :",
    keys_unowned = "Non possédé\n(Appuyez sur Recharger avec les clés ou appuyez sur F2 pour posséder)",
    keys_everyone = "(Appuyez sur Recharger avec les clés ou appuyez sur F2 pour autoriser tout le monde)",
    door_unown_arrested = "Vous ne pouvez pas posséder ou céder des biens lorsque vous êtes arrêté !",
    door_unownable = "Cette porte ne peut pas être possédée ou cédée !",
    door_sold = "Vous avez vendu ceci pour %s",
    door_already_owned = "Cette porte est déjà possédée par quelqu'un !",
    door_cannot_afford = "Vous ne pouvez pas vous permettre cette porte !",
    door_hobo_unable = "Vous ne pouvez pas acheter une porte si vous êtes un clochard !",
    vehicle_cannot_afford = "Vous ne pouvez pas vous permettre ce véhicule !",
    door_bought = "Vous avez acheté cette porte pour %s%s",
    vehicle_bought = "Vous avez acheté ce véhicule pour %s%s",
    door_need_to_own = "Vous devez posséder cette porte pour pouvoir %s",
    door_rem_owners_unownable = "Vous ne pouvez pas retirer des propriétaires si la porte ne peut pas être possédée !",
    door_add_owners_unownable = "Vous ne pouvez pas ajouter des propriétaires si la porte ne peut pas être possédée !",
    rp_addowner_already_owns_door = "%s possède déjà (ou est déjà autorisé à posséder) cette porte !",
    add_owner = "Ajouter propriétaire",
    remove_owner = "Retirer propriétaire",
    coown_x = "Co-posséder %s",
    allow_ownership = "Autoriser propriété",
    disallow_ownership = "Refuser propriété",
    edit_door_group = "Modifier le groupe de porte",
    door_groups = "Groupes de porte",
    door_group_doesnt_exist = "Le groupe de porte n'existe pas !",
    door_group_set = "Groupe de porte défini avec succès.",
    sold_x_doors_for_y = "Vous avez vendu %d porte(s) pour %s%s !",
    sold_x_doors = "You have sold %d doors for %s!",
    no_doors_owned = "You don't own any doors!",

    sold_x_doors = "Vous avez vendu %d portes pour %s !",
    no_doors_owned = "Vous ne possédez aucune porte !",
    
    -- Entités
    drugs = "drogues",
    Drugs = "Drogues",
    drug_lab = "Laboratoire de Drogues",
    gun_lab = "Laboratoire d'Armes",
    any_lab = "n'importe quel laboratoire",
    gun = "arme",
    microwave = "Micro-ondes",
    food = "nourriture",
    Food = "Nourriture",
    money_printer = "Imprimante à Argent",
    tip_jar = "Tirelire",
    
    sign_this_letter = "Signer cette lettre",
    signed_yours = "Cordialement,",
    
    money_printer_exploded = "Votre imprimante à argent a explosé !",
    money_printer_overheating = "Votre imprimante à argent surchauffe !",
    
    contents = "Contenu : ",
    amount = "Montant : ",
    
    picking_lock = "Crochetage en cours",
    
    cannot_pocket_x = "Vous ne pouvez pas mettre ceci dans votre poche !",
    cannot_pocket_gravgunned = "Vous ne pouvez pas mettre ceci dans votre poche : il est tenu par un gravgun.",
    object_too_heavy = "Cet objet est trop lourd.",
    pocket_full = "Votre poche est pleine !",
    pocket_no_items = "Votre poche ne contient aucun objet.",
    drop_item = "Jeter l'objet",
    
    bonus_destroying_entity = "en détruisant cette entité illégale.",
    
    switched_burst = "Passé en mode tir rafale.",
    switched_fully_auto = "Passé en mode automatique complet.",
    switched_semi_auto = "Passé en mode semi-automatique.",
    
    keypad_checker_shoot_keypad = "Tirez sur un clavier pour voir ce qu'il contrôle.",
    keypad_checker_shoot_entity = "Tirez sur une entité pour voir quels claviers y sont connectés.",
    keypad_checker_click_to_clear = "Clic droit pour effacer.",
    keypad_checker_entering_right_pass = "Entrée du bon mot de passe",
    keypad_checker_entering_wrong_pass = "Entrée du mauvais mot de passe",
    keypad_checker_after_right_pass = "après avoir entré le bon mot de passe",
    keypad_checker_after_wrong_pass = "après avoir entré le mauvais mot de passe",
    keypad_checker_right_pass_entered = "Bon mot de passe entré",
    keypad_checker_wrong_pass_entered = "Mauvais mot de passe entré",
    keypad_checker_controls_x_entities = "Ce clavier contrôle %d entités",
    keypad_checker_controlled_by_x_keypads = "Cette entité est contrôlée par %d claviers",
    keypad_on = "ACTIVÉ",
    keypad_off = "DÉSACTIVÉ",
    seconds = "secondes",
    
    persons_weapons = "Les armes de %s :",
    returned_persons_weapons = "Armes confisquées de %s rendues.",
    no_weapons_confiscated = "%s n'avait aucune arme confisquée !",
    no_illegal_weapons = "%s n'avait pas d'armes illégales.",
    confiscated_these_weapons = "Armes confisquées :",
    checking_weapons = "Confiscation des armes en cours",
    
    shipment_antispam_wait = "Veuillez attendre avant de faire apparaître un autre colis.",
    createshipment = "Créer un colis",
    splitshipment = "Séparer ce colis",
    shipment_cannot_split = "Impossible de séparer ce colis.",
    
    -- Dialogue
    hear_noone = "Personne ne peut vous entendre %s !",
    hear_everyone = "Tout le monde peut vous entendre !",
    hear_certain_persons = "Joueurs qui peuvent vous entendre %s : ",
    
    whisper = "chuchoter",
    yell = "crier",
    broadcast = "[Diffusion !]",
    radio = "radio",
    request = "(DEMANDE !)",
    group = "(groupe)",
    demote = "(RÉTROGRADER)",
    ooc = "Hors RP",
    radio_x = "Radio %d",
    
    talk = "parler",
    speak = "s'exprimer",
    
    speak_in_ooc = "parler en Hors RP",
    perform_your_action = "effectuer votre action",
    talk_to_your_group = "parler à votre groupe",
    
    channel_set_to_x = "Canal défini sur %s !",
    channel = "canal",
    
    -- Notifications
    disabled = "%s a été désactivé ! %s",
    gm_spawnvehicle = "faire apparaître des véhicules",
    gm_spawnsent = "faire apparaître des entités scriptées (SENTs)",
    gm_spawnnpc = "faire apparaître des personnages non-joueurs (PNJs)",
    see_settings = "Veuillez consulter les paramètres de DarkRP.",
    limit = "Vous avez atteint la limite de %s !",
    have_to_wait = "Vous devez attendre encore %d secondes avant d'utiliser %s !",
    must_be_looking_at = "Vous devez regarder un %s !",
    incorrect_job = "Vous n'avez pas le bon emploi pour %s",
    unavailable = "Ce %s est indisponible",
    unable = "Vous ne pouvez pas %s. %s",
    cant_afford = "Vous ne pouvez pas vous permettre ce %s",
    created_x = "%s a créé un %s",
    cleaned_up = "Vos %s ont été nettoyés.",
    you_bought_x = "Vous avez acheté %s pour %s%d.", -- compatibilité avec les versions antérieures
    you_bought = "Vous avez acheté %s pour %s.",
    you_got_yourself = "Vous vous êtes procuré un %s.",
    you_received_x = "Vous avez reçu %s pour %s.",
    
    created_first_jailpos = "Vous avez créé la première position de prison !",
    added_jailpos = "Vous avez ajouté une position de prison supplémentaire !",
    reset_add_jailpos = "Vous avez supprimé toutes les positions de prison et en avez ajouté une nouvelle ici.",
    created_spawnpos = "Vous avez ajouté une position de réapparition pour %s.",
    updated_spawnpos = "Vous avez supprimé toutes les positions de réapparition pour %s et en avez ajouté une nouvelle ici.",
    remove_spawnpos = "Vous avez supprimé toutes les positions de réapparition pour %s.",
    do_not_own_ent = "Vous ne possédez pas cette entité !",
    cannot_drop_weapon = "Impossible de lâcher cette arme !",
    job_switch = "Changement de métier réussi !",
    job_switch_question = "Changer de métier avec %s ?",
    job_switch_requested = "Changement de métier demandé.",
    switch_jobs = "changer de métier",
    
    cooks_only = "Réservé aux cuisiniers.",
    
    -- Divers
    unknown = "Inconnu",
    arguments = "arguments",
    no_one = "personne",
    door = "porte",
    vehicle = "véhicule",
    door_or_vehicle = "porte/véhicule",
    driver = "Conducteur : %s",
    name = "Nom : %s",
    locked = "Verrouillé.",
    unlocked = "Déverrouillé.",
    player_doesnt_exist = "Le joueur n'existe pas.",
    job_doesnt_exist = "Le métier n'existe pas !",
    must_be_alive_to_do_x = "Vous devez être en vie pour %s.",
    banned_or_demoted = "Banni/rétrogradé",
    wait_with_that = "Attendez un peu avec ça.",
    could_not_find = "Impossible de trouver %s",
    f3tovote = "Appuyez sur F3 pour voter",
    listen_up = "Écoutez bien :", -- Dans rp_tell ou rp_tellall
    nlr = "Règle de Nouvelle Vie : Ne vous vengez pas après une arrestation/mort.",
    reset_settings = "Vous avez réinitialisé tous les paramètres !",
    must_be_x = "Vous devez être %s pour pouvoir %s.",
    agenda = "ordre du jour",
    agenda_updated = "L'ordre du jour a été mis à jour",
    job_set = "%s a défini son métier à '%s'",
    demote_vote = "rétrograder",
    demoted = "%s a été rétrogradé",
    demoted_not = "%s n'a pas été rétrogradé",
    demote_vote_started = "%s a lancé un vote pour la rétrogradation de %s",
    demote_vote_text = "Candidat à la rétrogradation :\n%s", -- '%s' est la raison ici
    cant_demote_self = "Vous ne pouvez pas vous rétrograder vous-même.",
    i_want_to_demote_you = "Je veux vous rétrograder. Raison : %s",
    tried_to_avoid_demotion = "Vous avez tenté d'échapper à la rétrogradation. Vous avez échoué et avez été rétrogradé.", -- vilain garçon !
    lockdown_started = "Le maire a déclenché un confinement, veuillez rentrer chez vous !",
    lockdown_ended = "Le confinement est terminé",
    gunlicense_requested = "%s a demandé une licence d'armes à %s",
    gunlicense_granted = "%s a accordé une licence d'armes à %s",
    gunlicense_denied = "%s a refusé une licence d'armes à %s",
    gunlicense_question_text = "Accorder une licence d'armes à %s ?",
    gunlicense_remove_vote_text = "%s a lancé un vote pour la révocation de la licence d'armes de %s",
    gunlicense_remove_vote_text2 = "Révoquer la licence d'armes :\n%s", -- Où %s est la raison
    gunlicense_removed = "La licence de %s a été révoquée !",
    gunlicense_not_removed = "La licence de %s n'a pas été révoquée !",
    vote_specify_reason = "Vous devez spécifier une raison !",
    vote_started = "Le vote a été créé",
    vote_alone = "Vous avez gagné le vote car vous êtes seul sur le serveur.",
    you_cannot_vote = "Vous ne pouvez pas voter !",
    x_cancelled_vote = "%s a annulé le dernier vote.",
    cant_cancel_vote = "Impossible d'annuler le dernier vote car il n'y a pas eu de dernier vote !",
    jail_punishment = "Châtiment pour avoir déconnecté ! Emprisonné pour : %d secondes.",
    admin_only = "Seuls les administrateurs peuvent %s",
    chief_or = "Chef ou ",
    f4tovote = "Appuyez sur F4 pour voter",
    you_cannot_do_that = "Vous ne pouvez pas faire cela %s",
    duplicated = "Dupliqué",
    players_only = "Seuls les joueurs peuvent %s",
    
    frozen = "Gelé.",
    recipient = "destinataire",
    forbidden_name = "Nom interdit.",
    illegal_characters = "Caractères illégaux.",
    too_long = "Trop long.",
    too_short = "Trop court.",
    
    dead_in_jail = "Vous êtes maintenant mort jusqu'à la fin de votre peine de prison !",
    died_in_jail = "%s est mort en prison !",
    
    credits_for = "CRÉDITS POUR %s\n",
    credits_see_console = "Les crédits de DarkRP sont affichés dans la console.",
    
    rp_getvehicles = "Véhicules disponibles pour les véhicules personnalisés :",
    
    data_not_loaded_one = "Vos données ne sont pas encore chargées. Veuillez patienter.",
    data_not_loaded_two = "Si cela persiste, essayez de rejoindre à nouveau ou contactez un administrateur.",
    
    cant_spawn_weapons = "Vous ne pouvez pas faire apparaître des armes.",
    drive_disabled = "Conduite désactivée pour le moment.",
    property_disabled = "Propriété désactivée pour le moment.",
    
    not_allowed_to_purchase = "Vous n'êtes pas autorisé à acheter cet article.",
    
    rp_teamban_hint = "rp_teamban [nom/ID du joueur] [nom/id de l'équipe]. Utilisez ceci pour bannir un joueur d'une certaine équipe.",
    rp_teamunban_hint = "rp_teamunban [nom/ID du joueur] [nom/id de l'équipe]. Utilisez ceci pour débannir un joueur d'une certaine équipe.",
    x_teambanned_y_for_z = "%s a banni %s d'être un %s pour %s minutes.",
    x_teamunbanned_y = "%s a débanni %s d'être un %s.",
    
    -- Compatibilité rétroactive :
    you_set_x_salary_to_y = "Vous avez fixé le salaire de %s à %s%d.",
    x_set_your_salary_to_y = "%s a fixé votre salaire à %s%d.",
    you_set_x_money_to_y = "Vous avez fixé l'argent de %s à %s%d.",
    x_set_your_money_to_y = "%s a fixé votre argent à %s%d.",
    
    you_set_x_salary = "Vous avez fixé le salaire de %s à %s.",
    x_set_your_salary = "%s a fixé votre salaire à %s.",
    you_set_x_money = "Vous avez fixé l'argent de %s à %s.",
    x_set_your_money = "%s a fixé votre argent à %s.",
    you_set_x_name = "Vous avez changé le nom de %s en %s.",
    x_set_your_name = "%s a changé votre nom en %s.",
    
    someone_stole_steam_name = "Quelqu'un utilise déjà votre nom Steam comme nom RP, nous avons donc ajouté un '1' à la fin de votre nom.", -- Oups
    already_taken = "Déjà pris.",
    
    job_doesnt_require_vote_currently = "Ce métier ne nécessite pas de vote pour le moment !",
    
    x_made_you_a_y = "%s vous a fait devenir %s !",
    
    cmd_cant_be_run_server_console = "Cette commande ne peut pas être exécutée depuis la console du serveur.",
    
    -- La loterie
    lottery_started = "Il y a une loterie ! Participez pour %s%d ?", -- compatibilité rétroactive
    lottery_has_started = "Il y a une loterie ! Participez pour %s ?",
    lottery_entered = "Vous avez participé à la loterie pour %s.",
    lottery_not_entered = "%s n'a pas participé à la loterie.",
    lottery_noone_entered = "Personne n'a participé à la loterie.",
    lottery_won = "%s a gagné la loterie ! Il a remporté %s.",
    lottery = "loterie",
    lottery_please_specify_an_entry_cost = "Veuillez spécifier un coût d'entrée (%s-%s).",
    too_few_players_for_lottery = "Il y a trop peu de joueurs pour lancer une loterie. Il faut au moins %d joueurs.",
    lottery_ongoing = "Impossible de lancer une loterie, il y en a déjà une en cours.",
    
    -- Animations
    custom_animation = "Animation personnalisée !",
    bow = "Saluer",
    sexy_dance = "Danse sexy",
    follow_me = "Suivez-moi !",
    laugh = "Rire",
    lion_pose = "Pose du lion",
    nonverbal_no = "Non verbal non",
    thumbs_up = "Pouce en l'air",
    wave = "Vague",
    dance = "Danser",
    
    -- Hungermod
    starving = "Affamé !",
    
    -- AFK
    afk_mode = "Mode AFK",
    unable_afk_spam_prevention = "Veuillez attendre avant de passer à nouveau en mode AFK.",
    salary_frozen = "Votre salaire a été gelé.",
    salary_restored = "Bon retour, votre salaire a été rétabli.",
    no_auto_demote = "Vous ne serez pas rétrogradé automatiquement.",
    youre_afk_demoted = "Vous avez été rétrogradé pour être resté AFK trop longtemps. Utilisez /afk la prochaine fois.",
    hes_afk_demoted = "%s a été rétrogradé pour être resté AFK trop longtemps.",
    afk_cmd_to_exit = "Tapez /afk pour quitter le mode AFK.",
    player_now_afk = "%s est maintenant AFK.",
    player_no_longer_afk = "%s n'est plus AFK.",
    
    -- Menu de contrats
    hit = "contrat",
    hitman = "Tueur à gages",
    current_hit = "Contrat : %s",
    cannot_request_hit = "Impossible de demander un contrat ! %s",
    hitmenu_request = "Demander",
    player_not_hitman = "Ce joueur n'est pas un tueur à gages !",
    distance_too_big = "Distance trop grande.",
    hitman_no_suicide = "Le tueur à gages ne se tuera pas lui-même.",
    hitman_no_self_order = "Un tueur à gages ne peut pas passer un contrat sur lui-même.",
    hitman_already_has_hit = "Le tueur à gages a déjà un contrat en cours.",
    price_too_low = "Prix trop bas !",
    hit_target_recently_killed_by_hit = "La cible a récemment été tuée par un contrat.",
    customer_recently_bought_hit = "Le client a récemment demandé un contrat.",
    accept_hit_question = "Accepter le contrat de %s\nconcernant %s pour %s%d ?", -- compatibilité rétroactive
    accept_hit_request = "Accepter le contrat de %s\nconcernant %s pour %s ?",
    hit_requested = "Contrat demandé !",
    hit_aborted = "Contrat annulé ! %s",
    hit_accepted = "Contrat accepté !",
    hit_declined = "Le tueur à gages a refusé le contrat !",
    hitman_left_server = "Le tueur à gages a quitté le serveur !",
    customer_left_server = "Le client a quitté le serveur !",
    target_left_server = "La cible a quitté le serveur !",
    hit_price_set_to_x = "Prix du contrat fixé à %s%d.", -- compatibilité rétroactive
    hit_price_set = "Prix du contrat fixé à %s.",
    hit_complete = "Contrat effectué par %s !",
    hitman_died = "Le tueur à gages est mort !",
    target_died = "La cible est morte !",
    hitman_arrested = "Le tueur à gages a été arrêté !",
    hitman_changed_team = "Le tueur à gages a changé d'équipe !",
    x_had_hit_ordered_by_y = "%s avait un contrat actif commandé par %s.",
    place_a_hit = "passer un contrat !",
    hit_cancel = "annulation de contrat !",
    hit_cancelled = "Le contrat a été annulé !",
    no_active_hit = "Vous n'avez aucun contrat actif !",
    
    -- Restrictions de vote
    hobos_no_rights = "Les clochards n'ont pas le droit de vote !",
    gangsters_cant_vote_for_government = "Les gangsters ne peuvent pas voter pour des choses gouvernementales !",
    government_cant_vote_for_gangsters = "Les fonctionnaires ne peuvent pas voter pour des choses de gangsters !",
    
    -- VGUI et quelques portes/véhicules supplémentaires
    vote = "Vote",
    time = "Temps : %d",
    yes = "Oui",
    no = "Non",
    ok = "OK",
    cancel = "Annuler",
    add = "Ajouter",
    remove = "Retirer",
    none = "Aucun",
    
    x_options = "Options de %s",
    sell_x = "Vendre %s",
    set_x_title = "Définir le titre de %s",
    set_x_title_long = "Définir le titre du %s que vous regardez.",
    jobs = "Métiers",
    buy_x = "Acheter %s",
    
    -- Menu F4
    ammo = "munitions",
    weapon_ = "arme",
    no_extra_weapons = "Ce métier n'a pas d'armes supplémentaires.",
    become_job = "Devenir métier",
    create_vote_for_job = "Créer un vote",
    shipment = "colis",
    Shipments = "Colis",
    shipments = "colis",
    F4guns = "Armes",
    F4entities = "Divers",
    F4ammo = "Munitions",
    F4vehicles = "Véhicules",
    
    -- Onglet 1
    give_money = "Donner de l'argent au joueur que vous regardez",
    drop_money = "Lâcher de l'argent",
    change_name = "Changer votre nom DarkRP",
    go_to_sleep = "Aller dormir/se réveiller",
    drop_weapon = "Lâcher l'arme actuelle",
    buy_health = "Acheter de la santé (%s)",
    request_gunlicense = "Demander un permis de port d'arme",
    demote_player_menu = "Rétrograder un joueur",
    
    searchwarrantbutton = "Faire rechercher un joueur",
    unwarrantbutton = "Retirer le statut de recherché d'un joueur",
    noone_available = "Personne de disponible",
    request_warrant = "Demander un mandat de perquisition pour un joueur",
    make_wanted = "Rendre quelqu'un recherché",
    make_unwanted = "Rendre quelqu'un non recherché",
    set_jailpos = "Définir la position de la prison",
    add_jailpos = "Ajouter une position de prison",
    
    set_custom_job = "Définir un métier personnalisé (appuyez sur Entrée pour activer)",
    
    set_agenda = "Définir l'agenda (appuyez sur Entrée pour activer)",
    
    initiate_lockdown = "Lancer un confinement",
    stop_lockdown = "Arrêter le confinement",
    start_lottery = "Lancer une loterie",
    give_license_lookingat = "Donner une licence d'arme à <celui que vous regardez>",
    
    laws_of_the_land = "LOIS DU PAYS",
    law_added = "Loi ajoutée.",
    law_removed = "Loi supprimée.",
    law_reset = "Lois réinitialisées.",
    law_too_short = "Loi trop courte.",
    laws_full = "Les lois sont pleines.",
    default_law_change_denied = "Vous n'êtes pas autorisé à changer les lois par défaut.",
    
    -- Second onglet
    job_name = "Nom : ",
    job_description = "Description : ",
    job_weapons = "Armes : ",
    
    -- Onglet Entités
    buy_a = "Acheter %s : %s",
    
    -- Onglet Licence d'armes
    license_tab = [[Licences d'armes
    
    Cochez les armes que les gens devraient pouvoir obtenir SANS licence !
    ]],
    license_tab_other_weapons = "Autres armes :",    
}

-- The language code is usually (but not always) a two-letter code. The default language is "en".
-- Other examples are "nl" (Dutch), "de" (German)
-- If you want to know what your language code is, open GMod, select a language at the bottom right
-- then enter gmod_language in console. It will show you the code.
-- Make sure language code is a valid entry for the convar gmod_language.
DarkRP.addLanguage("fr", my_language)
