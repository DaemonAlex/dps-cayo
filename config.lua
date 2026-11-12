-- DPS 2026-11-12 (Damon: "do an ipl call of our own that only calls base files").
-- FiveM does not show Cayo Perico until a script asks the game for the island's map files (IPLs).
-- This script asks for the game's OWN files only. The names below are the game's, taken from the
-- public game data list (DurtyFree gta-v-data-dumps, ipls.json, pack mpheist4). Nothing is streamed
-- from here. It replaced NTeam's island loader.
--
-- true = on, false = off. Change a line, then restart dps-cayo (or the server).
-- 2026-11-12 09:02: NTeam Cayo Porto is out and TStudio's bridge and lagoon are in. The island's own plants and the
-- checkpoint are back on (TStudio's bridge brings its own checkpoint file). Fences, gates, guns and mines stay off: an open island.
Config = {}

-- The island itself. Leave these on, or parts of the land, sea bed and buildings go missing.
Config.Base = {
    'h4_islandx', 'h4_islandx_terrain_01', 'h4_islandx_terrain_02', 'h4_islandx_terrain_03',
    'h4_islandx_terrain_04', 'h4_islandx_terrain_05', 'h4_islandx_terrain_06',
    'h4_islandx_placement_01', 'h4_islandx_placement_02', 'h4_islandx_placement_03', 'h4_islandx_placement_04',
    'h4_islandx_placement_05', 'h4_islandx_placement_06', 'h4_islandx_placement_07', 'h4_islandx_placement_08',
    'h4_islandx_placement_09', 'h4_islandx_placement_10',
    'h4_ne_ipl_00', 'h4_ne_ipl_01', 'h4_ne_ipl_02', 'h4_ne_ipl_03', 'h4_ne_ipl_04', 'h4_ne_ipl_05', 'h4_ne_ipl_06', 'h4_ne_ipl_07', 'h4_ne_ipl_08', 'h4_ne_ipl_09',
    'h4_nw_ipl_00', 'h4_nw_ipl_01', 'h4_nw_ipl_02', 'h4_nw_ipl_03', 'h4_nw_ipl_04', 'h4_nw_ipl_05', 'h4_nw_ipl_06', 'h4_nw_ipl_07', 'h4_nw_ipl_08', 'h4_nw_ipl_09',
    'h4_se_ipl_00', 'h4_se_ipl_01', 'h4_se_ipl_02', 'h4_se_ipl_03', 'h4_se_ipl_04', 'h4_se_ipl_05', 'h4_se_ipl_06', 'h4_se_ipl_07', 'h4_se_ipl_08', 'h4_se_ipl_09',
    'h4_sw_ipl_00', 'h4_sw_ipl_01', 'h4_sw_ipl_02', 'h4_sw_ipl_03', 'h4_sw_ipl_04', 'h4_sw_ipl_05', 'h4_sw_ipl_06', 'h4_sw_ipl_07', 'h4_sw_ipl_08', 'h4_sw_ipl_09',
    'h4_islandairstrip', 'h4_islandxdock', 'h4_islandx_maindock', 'h4_islandxtower', 'h4_islandx_checkpoint',
    'h4_islandx_mansion', 'h4_islandx_mansion_b', 'h4_islandx_mansion_office',
    'h4_islandx_mansion_lockup_01', 'h4_islandx_mansion_lockup_02', 'h4_islandx_mansion_lockup_03', 'h4_islandx_mansion_vault',
    'h4_beach',
}

-- Parts you can switch. Each line: on or off, then the game files it covers.
Config.Parts = {
    { name = 'Beach props',                 on = true,  ipls = { 'h4_beach_props' } },
    { name = 'Beach bar',                   on = true,  ipls = { 'h4_beach_bar_props' } },
    { name = 'Beach party stage',           on = true,  ipls = { 'h4_beach_party', 'h4_beach_props_party' } },
    { name = 'Airstrip props',              on = true,  ipls = { 'h4_islandairstrip_props', 'h4_islandairstrip_propsb' } },
    { name = 'Hangar props',                on = true,  ipls = { 'h4_islandairstrip_hangar_props' } },
    { name = 'Hangar doors open',           on = true,  ipls = { 'h4_islandairstrip_doorsopen' } },
    { name = 'Hangar doors closed',         on = false, ipls = { 'h4_islandairstrip_doorsclosed' } },   -- never both door lines on
    { name = 'North dock props',            on = true,  ipls = { 'h4_islandxdock_props', 'h4_islandxdock_props_2' } },
    { name = 'Main dock props',             on = true,  ipls = { 'h4_islandx_maindock_props', 'h4_islandx_maindock_props_2' } },
    { name = 'Canal props',                 on = true,  ipls = { 'h4_islandxcanal_props' } },
    { name = 'Barracks props',              on = true,  ipls = { 'h4_islandx_barrack_props' } },
    { name = 'Barracks hatch',              on = true,  ipls = { 'h4_islandx_barrack_hatch' } },
    { name = 'Dock water hatch',            on = true,  ipls = { 'h4_islandxdock_water_hatch' } },
    { name = 'Island props',                on = true,  ipls = { 'h4_islandx_props' } },
    { name = 'Tower plants',                on = true,  ipls = { 'h4_islandxtower_veg' } },
    { name = 'Mansion props',               on = true,  ipls = { 'h4_islandx_mansion_props' } },
    { name = 'Mansion lights',              on = true,  ipls = { 'h4_islandx_mansion_lights' } },
    { name = 'Island street lights',        on = true,  ipls = { 'island_lodlights' } },
    { name = 'Stranded shark',              on = true,  ipls = { 'h4_islandx_disc_strandedshark' } },
    { name = 'Stranded whale',              on = true,  ipls = { 'h4_islandx_disc_strandedwhale' } },
    { name = 'Checkpoint props',            on = true,  ipls = { 'h4_islandx_checkpoint_props' } },
    { name = 'Wide plant groups 05',        on = true,  ipls = { 'h4_islandx_terrain_props_05_a', 'h4_islandx_terrain_props_05_b', 'h4_islandx_terrain_props_05_c',
                                                                 'h4_islandx_terrain_props_05_d', 'h4_islandx_terrain_props_05_e', 'h4_islandx_terrain_props_05_f' } },
    { name = 'Wide plant groups 06',        on = true,  ipls = { 'h4_islandx_terrain_props_06_a', 'h4_islandx_terrain_props_06_b', 'h4_islandx_terrain_props_06_c' } },
    -- Off: an open island, nothing locked or armed.
    { name = 'Mansion guard fence',         on = false, ipls = { 'h4_islandx_mansion_guardfence' } },
    { name = 'Mansion entrance fence',      on = false, ipls = { 'h4_islandx_mansion_entrance_fence' } },
    { name = 'Mansion side fence',          on = false, ipls = { 'h4_islandx_mansion_b_side_fence' } },
    { name = 'Padlocks',                    on = false, ipls = { 'h4_island_padlock_props' } },
    { name = 'Mansion gate closed',         on = false, ipls = { 'h4_mansion_gate_closed' } },          -- off = the gate stands open
    { name = 'Mansion gate broken',         on = false, ipls = { 'h4_mansion_gate_broken' } },
    { name = 'Underwater gate closed',      on = false, ipls = { 'h4_underwater_gate_closed' } },
    { name = 'Anti-air guns',               on = false, ipls = { 'h4_aa_guns' } },
    { name = 'Sea mines',                   on = false, ipls = { 'h4_islandx_sea_mines' } },
    { name = 'Boat blockers',               on = false, ipls = { 'h4_boatblockers' } },
    { name = 'Remains cage',                on = false, ipls = { 'h4_mansion_remains_cage' } },
}

-- Near the island only (how close counts as "at the island").
Config.Area = { x = 4840.0, y = -5174.0, enter = 2200.0, leave = 2450.0 }

-- The game's own island people (guards and workers standing about). Not custom peds.
Config.IslandPeds = true

-- Island background sound (surf, birds, jungle).
Config.IslandSound = true

-- Calm the open-sea waves near the island (0.0 = calm). false = leave the sea as it is.
Config.Waves = 0.0
