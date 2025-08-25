# Raise of the Action Hero
### Keybind more, click less. Make WoW more like an action RPG.

Automate away holding down right click, intelligently lock or unlock mouselook, and use smartbuttons that understand the context of many interactions.
## Getting Started
Basic Configuration

    /rah options

Options to configure the add-no can be brought up using /rah options or Game Menu > Options > AddOns > Raise of the Action Hero

Several of this addons features are done through the keybindings menu.

  * From the games Main Menu GoTo Keybindings -> Addons -> Raise of the Action Hero and set keybindings there.

### Features
  * Temp toggle (keypress down) of mouselook state
      * Smart automatic locking and unlocking of mouselook
      * Automatically lock when entering combat (configurable)
      * Automatically lock when moving (configurable)
      * Automatically unlock when stopping moving (configurable)
      * Unlock when interacting with a vendor
      * Unlock when riding a vendor yak, mammoth, bear, or brutosaur (configurable)
      * Automatically unlock when casting a spell that still requires target
      * Automatically unlock on important interfaces being opened
      * Configurable time for smart locking and unlocking
      * Double tap temp toggle to lock or unlock.
    * SmartButtons bindings - four configurable keybindings
      * The SmartButtons attempt to have memorizable default actions based on common interface & interaction panels
        * Vendor
            * SmartButton 1 - Repair
            * SmartButton 2 - Repair all items
            * SmartButton 3 - Repair all items (remove from guild first)
            * SmartButton 4 - Vendor all trash
        * Quest Giver
            * SmartButton 1 - Accept Quest
            * SmartButton 2 - Decline Quest
        * Mailbox
            * SmartButton 1 - Open all Mail
            * SmartButton 2 - 4 - Loot the top item in the mailbox.

## Some built-in game settings enhance this add-on.

(Target Scan Enemy) as a keybinding.
>This binding can be found in Keybindings -> Targeting -> Target Scan Enemy (Hold).<br>
TSE can also be used to target M+ Explosives instead of clicking them! <br>
Addon author Racklinc has set TSE to the TAB key, replacing the traditional tab key behavior.

Action Targeting
>Game menu > Options > Game > Combat > check Enable Action Targeting

Interact Key
>Game Menu > Options > Game > Controls > check Enable Interact Key and then Interact With Target

## Macro Ideas and Suggestions

>Using macros to modify the way spells work is a great way to make WoW more action oriented. Head over to RAH's wiki on GitHub to explore some easy to modify macro examples for ground-targeted spells, auto-self cast spells, cast/cancel auras, and a messy-do-half-the things macro.

## Known Bugs
Occasionally this add-on will force your character to auto-run. I don't believe this is necessarily a bug in the add-on, but one in the game. The game seems to get confused about the pressed-down state for both mouse buttons.

>To fix this, disable RAH Smart Features using either the keybinding or "/rah smart off" and then clicking both mouse buttons until the mouse cursor gets unlocked and your character stops auto-running. Then you can re-enable Smart Features again with the keybinding or "/rah smart on" and resume playing... until the next time this happens.     

Some forms of game-originated teleporting may cause the the state of mouselook to report incorrectly, making smart features to not work. Teleporting in this context is entering a dungeon, being a passenger in a multi-person mount or vehicle and a position change happening, or leaving a phased area.

>To fix this, disable and enable Smart Features with either the keybinding or "/rah smart off" followed by "/rah smart on"     

SmartButtons disabled during combat

>The intended function of the SmartButtons is to interact with interfaces such as quest NPCs, vendors, and the occasional confirmation dialog box. Since most of these interactions should be done outside combat, the SmartButtons is disabled in-combat. This is to prevent potential interface errors caused by trying to run protected functions during combat.

>I plan on coding in detections for using some of the SmartButton's features while in combat, but that day isn't today and I didn't want to release the add-on in a state where it could attempt to run protected functions while in combat.
