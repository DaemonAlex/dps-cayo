# dps-cayo

Switches on the game's own Cayo Perico island, and nothing else.

## What it is for

Cayo Perico ships with the game but is switched off. Most servers turn it on with a map pack that
also adds its own buildings, and two such packs rarely agree. This script only asks the game for
its own island files. You get a clean, complete base island that paid Cayo maps can then be added
to one at a time, without a loader fighting them.

## What it does

- Loads the base island's own files (terrain, buildings, props, lights).
- Lets you switch groups of props on or off in `config.lua`: beach party, hangar doors, fences,
  gates, guard towers and so on.
- Turns on the island's ambient peds, sounds and calmer water when a player is near it, and
  turns them off again when they leave.

It has no map files of its own. Nothing is streamed, so it adds nothing to the download.

## On its own, and with other scripts

**On its own.** A walkable, complete Cayo Perico with no extra downloads. Good for a server that
wants the island as scenery or as a place to fly to.

**With paid Cayo maps.** Use this as the only island loader and add map packs on top: a mansion,
a police station, storage, a lab, a bridge or tunnel to the mainland. Remove the loader that each
pack ships with, or the island is requested twice. Switch off any prop group here that a pack
replaces. For example, turn off the mansion gate and fences if a mansion pack opens the compound.

**With a minimap pack.** This does not draw the island on the map. Use a minimap resource for that.

## Requirements

- Game build 2189 or newer.

## Install

1. Put the folder in your resources and add `ensure dps-cayo` before any Cayo map packs.
2. Remove or disable other Cayo island loaders.
3. Set the prop groups you want in `config.lua`.

Restart the whole server to apply changes. Players already near the island keep what they had
loaded until they reconnect.

## Configuration

`config.lua`:

| Setting | Meaning |
|---|---|
| `Config.Base` | The island's own files. Leave as it is. |
| `Config.Parts` | Groups of props, each with `on = true` or `false`. |
| `Config.Area` | The island centre, and the distances at which a player counts as arriving (`enter`) and leaving (`leave`). |
| `Config.IslandPeds`, `Config.IslandSound`, `Config.Waves` | Ambient peds, ambient sound and the calmer sea near the island. |

## Other DPS scripts

All of these are made for DelPerroSands and run together on one Qbox server. Each one works on
its own. The ones marked "pairs with" do more when both are running.

| Script | What it does |
|---|---|
| [dps-inventory](https://github.com/DaemonAlex/dps-inventory) | The inventory: ox_inventory with equipment slots, backpacks, armour plates and a self status panel, in the DelPerroSands colours. |
| [dps-medical](https://github.com/DaemonAlex/dps-medical) | Patient records, illness and diagnostic tests. A companion to wasabi_ambulance. Pairs with dps-inventory: symptoms and diagnoses show on the status panel. |
| [dps-insurance](https://github.com/DaemonAlex/dps-insurance) | Ties m-Insurance into the MDT, impound, hospital and medical chart. Pairs with dps-medical. |
| [dps-studio](https://github.com/DaemonAlex/dps-studio) | Build rooms, doors and portals in game from one panel (`/studio`), with owners and managers so staff do not have to support them. |
| [dps-shops](https://github.com/DaemonAlex/dps-shops) | Shop clerks who greet and react to a robbery, then player-owned shops. |
| [dps-fleet](https://github.com/DaemonAlex/dps-fleet) | Vehicle browser and workshop on one panel: extras, liveries and mods for emergency vehicles. |
| [dps-parking](https://github.com/DaemonAlex/dps-parking) | Parking with valet, impound, violations and reserved spots. |
| [dps-vehiclepersistence](https://github.com/DaemonAlex/dps-vehiclepersistence) | Vehicles stay where they were parked. Pairs with dps-parking. |
| [dps-towjob](https://github.com/DaemonAlex/dps-towjob) | Queue-based tow job with jg-mechanic integration. |
| [dps-services](https://github.com/DaemonAlex/dps-services) | Request a tow and follow it live on the lb-phone and lb-tablet. Pairs with dps-towjob. |
| [dps-autoshops](https://github.com/DaemonAlex/dps-autoshops) | Self-service repair shops when no mechanic is on duty. |
| [dps-cityworker](https://github.com/DaemonAlex/dps-cityworker) | City infrastructure job and career. |
| [dps-ainpcs](https://github.com/DaemonAlex/dps-ainpcs) | NPCs you can talk to, with trust, quests and intel. |
| [dps-badpeds](https://github.com/DaemonAlex/dps-badpeds) | Police interaction with NPCs: stops, arrests, intel and jail records. |
| [dps-gangwars](https://github.com/DaemonAlex/dps-gangwars) | Ambient gang NPCs, territory population and war reinforcements. |
| [dps-rotations](https://github.com/DaemonAlex/dps-rotations) | Moves dealers, harvests and other spots on a fixed schedule. |
| [dps-trains](https://github.com/DaemonAlex/dps-trains) | The train system. Pairs with dps-trains-stock, dps-traintools and dps-transitapp. |
| [dps-transitapp](https://github.com/DaemonAlex/dps-transitapp) | Live train arrival boards on the lb-phone. |
| [dps-faceplant](https://github.com/DaemonAlex/dps-faceplant) | City help, reports and staff tools on the lb-phone and lb-tablet. |
| [dps-chat](https://github.com/DaemonAlex/dps-chat) | A command box for voice-only servers. No chat feed. |
| [dps-filmmode](https://github.com/DaemonAlex/dps-filmmode) | One key hides every HUD layer and gives a smooth free camera for recording. |
