if [ ! -f ".env" ]; then
    echo "PYTHON2PATH=\"\"" > ./.env
fi
. .env
if [ -z "$PYTHON2PATH" ]; then
    echo "Set PYTHON2PATH in .env file"
else
    $PYTHON2PATH process_init.py
    $PYTHON2PATH process_global_variables.py
    $PYTHON2PATH process_strings.py
    $PYTHON2PATH process_skills.py
    $PYTHON2PATH process_music.py
    $PYTHON2PATH process_animations.py
    $PYTHON2PATH process_meshes.py
    $PYTHON2PATH process_sounds.py
    $PYTHON2PATH process_skins.py
    $PYTHON2PATH process_map_icons.py
    $PYTHON2PATH process_factions.py
    $PYTHON2PATH process_items.py
    $PYTHON2PATH process_scenes.py
    $PYTHON2PATH process_troops.py
    $PYTHON2PATH process_particle_sys.py
    $PYTHON2PATH process_scene_props.py
    $PYTHON2PATH process_tableau_materials.py
    $PYTHON2PATH process_presentations.py
    $PYTHON2PATH process_party_tmps.py
    $PYTHON2PATH process_parties.py
    $PYTHON2PATH process_quests.py
    $PYTHON2PATH process_info_pages.py
    $PYTHON2PATH process_scripts.py
    $PYTHON2PATH process_mission_tmps.py
    $PYTHON2PATH process_game_menus.py
    $PYTHON2PATH process_simple_triggers.py
    $PYTHON2PATH process_dialogs.py
    $PYTHON2PATH process_global_variables_unused.py
    $PYTHON2PATH process_postfx.py
    rm *.pyc
    echo "______________________________"
    echo "Script processing has ended."
fi
