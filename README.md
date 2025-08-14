# Raise of the Action Hero
### Keybind more, click less. Make WoW more like an action RPG.
Automate away holding down right click, intelligently lock or unlock mouselook, and use smartbuttons that understand the context of many interactions.
## Getting Started
Several of this addons features are done through the keybindings menu.

>From the games Main Menu GoTo Keybindings -> Addons -> Raise of the Action Hero and set keybindings there. Options to configure the add-no can be brought up using /rah options or Game Menu > Options > AddOns > Raise of the Action Hero

Some built-in game settings enhance this add-on.

(Target Scan Enemy) as a keybinding.
>This binding can be found in Keybindings -> Targeting -> Target Scan Enemy (Hold).
TSE can also be used to target M+ Explosives instead of clicking them!
Addon author Racklinc has set TSE to the TAB key, replacing the traditional tab key behavior.

Action Targeting
>Game menu > Options > Game > Combat > check Enable Action Targeting

Interact Key
>Game Menu > Options > Game > Controls > check Enable Interact Key and then Interact With Target

## Known Bugs
Occasionally this add-on will force your character to auto-run. I don't believe this is necessarily a bug in the add-on, but one in the game. The game seems to get confused about the pressed-down state for both mouse buttons.
>To fix this, disable RAH Smart Features using either the keybinding or /rah smart off and then clicking both mouse buttons until the mouse cursor gets unlocked and your character stops auto-running. Then you can re-enable Smart Features again with the keybinding or "/rah smart on" and resume playing... until the next time this happens.

Some forms of game-originated teleporting may cause the the state of mouselook to report incorrectly, making smart features to not work. Teleporting in this context is entering a dungeon, being a passenger in a multi-person mount or vehicle and a position change happening, or leaving a phased area.
>To fix this, disable and enable Smart Features with either the keybinding or "/rah smart off" followed by "/rah smart on"

SmartButtons may cause interface errors.
>The intended function of the SmartButtons is to interact with interfaces such as quest NPCs, vendors, and the occasional confirmation dialog box. I haven't coded the add-on to not perform some actions to be prevented while in-combat, resulting in an illegal set of logic for in-combat to be allowed. To fix this, reload the UI and avoid using the SmartButtons while in combat.
