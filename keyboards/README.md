# Firmware Configuration for Keyboards

## Rationale
There are two senses we utilize when we use keyboards as input devices:
- _Vision_ (e.g., look at the keyboard for hand-eye coordination)
- _Touch_ (e.g., find home key positions by the tactile feel)

Unless trained to _touch type,_ most of us would instinctively use vision-based guiding to orient our hands over a keyboard.

I view the practice of only optimizing for just one of these guiding senses as a wasted opportunity.

Let's take each of the following poor optimization and/or design choices found in common keyboards.
- A comically long spacebar wasting valuable keyboard real estate
- Each of the fingers with the shortest reach—the pinkies—needs to hit twice as many (or more) keys as the middle and ring fingers
- Each pinky finger is assigned the heaviest workload (e.g., holding down modifier keys such as Shift and Ctrl)
- Both of the opposable thumbs—an evolutionary advantage—are assigned to occasionally tap the said long bar
- Rows of keys are arranged traditionally since the nineteenth century with not much utility nor ergonomic purpose (e.g., row staggering)
- The default fixed keyboard layout (i.e., QWERTY) is ergonomically inferior to all other mainstream alternatives
- Minimalist keyboards don't have enough space to dedicate for frequently used keys

Given where I live—the 21st century, that is—I can't justify using poorly designed keyboards while my wrists hurt. Therefore, I use a custom mechanical keyboard that is tweaked (and continues to be tweaked) for my preference based on the following guidelines and how exactly my hands hurt.


## Design Guidelines
### Custom firmware
A mechanical keyboard is an expensive investment, especially if it comes with the support for _custom firmware (e.g., QMK, ZMK)._ Custom firmware allows you to configure any custom layout and save it into the onboard flash memory, enabling you to use your customized layout without having to install any software on a computer.

My current daily-driver keyboard of choice supports QMK firmware with VIA configurator out of the box. The configurator allows me to map any key to anything I want instantaneously without having to re-flash the keyboard firmware every time I do so.

### Ergonomic form factor
Ergonomics can mean different things to different people. On one hand, we have the traditional QWERTY keyboards. On the far end of the ergonomic spectrum, we have keyboards custom designed for individual hands and use cases. I feel an _ortholinear (aka matrix)_ keyboard provides a meaningful balance in between as a pragmatic base for common use.

However, I also prefer my typing area as two split sections. This allows the hands to be spread further apart for better comfort. Further, I prefer to end the typing area at the very edge of the keyboard (i.e., no modifier duties for pinkies), which combined with the natural height of regular mechanical switches allows the hands and fingers to rest at a more comfortable angle.

For these reasons, I picked up a 15x5 grid layout keyboard (i.e., Idobao ID75). A 15x5 grid is significantly wider than more commonly available ortholinear keyboards (e.g., OLKB Planck/Preonic). This choice gives me a uniform grid of programmable 75 keys, enough for everything I want.

### Colemak layout base
My base layout of choice is _Colemak._ It is relatively well-known layout, easier to migrate from QWERTY, and does not break the so-called universal shortcuts (e.g., Ctrl+C, Ctrl+V, etc.). It is also comfortable and satisfying to type in, especially if you touch type.

I use Colemak on my QMK base layer for the alphabetical keys. However, I have a few additional tweak for my preference (e.g., split typing areas, layers, and thumb clusters). I chose original Colemak as my base after trying out a few alternative layouts such as Dvorak, Colemak-DH (and other Colemak variants), etc.

### 1DFH for touch typing
_1 Distance from Home (1DFH)_ principle essentially means you only move a finger one distance away in any direction from its home position. This also means very little hand movement is needed, making it much easier to maintain good typing posture.

On an ortholinear keyboard, these distances are uniform in a given direction unlike in regular keyboards. No more reaching out to far away keys like "]". I also use all ten fingers including thumbs for 1DFH typing. 

### Thumb key clusters
_Thumb clusters_ mean what it sounds. Instead of using both thumbs for the single spacebar key, both thumbs can be put to good use adhering to the 1DFH principle. Therefore, two thumb clusters mean six physical keys, and more uses if you differentiate between _Tap_ and _Hold_ behaviors of each key.

I use thumb clusters to offload frequent and modifier keys away from the pinkies (e.g., Space, Backspace, Enter, Shift, Ctrl, Tab, and Layer Switching).

### Layers
_Layers_ in a keyboard mean the different additional characters or functions available on the same physical key by temporarily switching to a different layer. This is similar to when we press Fn key on a regular keyboard.

My current daily driver keyboard came with 4 layers (i.e., layer 0 - layer 3) as it is the default layers count in QMK. My configuration of these four layers is described below.

### Dedicated keys for visual guiding
As explained earlier, sometimes you need to hit a key with visual-only guiding (i.e., Hand-Eye coordination). Therefore, dedicated keys can be assigned for such frequently used keys.

In my case, these are keys like Modifiers (e.g., Ctrl, Shift, Alt, etc.), Navigation (e.g., Page Up/Down, Home/End, Arrows), Numbers, Function-keys, and Special Characters.

### Dedicated keys for tactile guiding
There are usually at least two homing keys in a keyboard (e.g., "F" and "J" with a distinct feel to touch on a QWERTY keyboard, "5" on a number pad). In addition, the four corners of a rectangular keyboard are prime spots to have dedicated keys you can find just by touch.

Therefore, I have used Esc, Del, Enter, and Ctrl on the four corners. Colemak layer has T and N in place for the homing positions. Since I approach a keyboard with both hands at an inwards angle, my thumb home positions end up being on the bottom row directly below my index finger home positions.

### Home-row mods
As the name suggests, home-row mods are modifier keys like Shift, Ctrl, Alt, and Win placed in the home row. They make key combination shortcuts (e.g., `Ctrl+ Shift+v`) satisfying to use and also reduce hand movement too.

Unfortunately, this also means adding a time-sensitive secondary function to the alphabetical keys of the home row. This limits typing speed and makes the typing experience more error-prone. To counter this downside, I access the home-row mods in different layers by holding a layer switch key with alternating hands.


## Current Layout: [G-24-10](Idobao%20ID75/G-24-11.json)
My daily-use main keyboard is built from an Idobao ID75 custom keyboard kit, configured as a ortholinear (matrix) split keyboard in a single body.

This Layout gives a comfortable amount of space between the split area and therefore, better ergonomics.

This is how is currently looks with a set of keycaps on.

![Current Layout 1: G-24-11](https://i.imgur.com/HhjIpME.png)

The keycap placement is primarily optimized for visual guiding. For example, the keycaps are in QWERTY arrangement because I can touch type in Colemak and I use a visually distinct keycap for Enter, etc. Homing positions are also maintained for tactile guiding (e.g., I only need homing positions for touch typing). Finally, the place-holder keycaps are also used based on the aesthetics (e.g., match/contrast the color of the surrounding keys).

Here is a composite image of the layers for quick reference. The details are described below.

![Layer Composite for Quick Reference](https://i.imgur.com/l98QJxL.png)

### Layer 0 (Default Layer)

Colemak base layer for split 1DFH touch typing, including thumb clusters. The thumb cluster also uses the differentiation between Tap and Hold behavior of a key to add more use to each key.

**Left Thumb Cluster (from L to R):**
- Shift
- Hold: Use Layer 3 & Tap: Space
- Hold: Use Layer 1 & Tap: Esc

**Right Thumb Cluster (from L to R):**
- Hold: Use Layer 1 & Tap: Backspace
- Hold: Use Layer 2 & Tap: Enter
- Shift

In addition, the four corners of the keyboard have useful keys (e.g., Esc, Del, Enter, and Ctrl) so that they can be hit without being seen.

The rest of the Layer 0 is used as dedicated keys for a number of frequently used keys which are otherwise only accessed in layers. These are assigned to the top row and the five middle columns. For example, numbers/symbols keys, arrow keys, dedicated symbols keys, increase/decrease screen brightness, Home/End keys, F2, F5, F11, Tab, and a few modifiers.

Since Layer 0 is the default layer, any undefined keys (i.e., pass-through keys but not deliberately-blank keys) in other layers are inherited from the Layer 0.

### Layer 1

**Left Hand Side:**
- Numbers
- Number-row symbols
- Home-row mods

**Right Hand Side:**
- Arrow keys
- Symbols
- Home-row mods

In addition, the center columns between the two typing areas also have F1 - F12.

### Layer 2

**Left Hand Side:**
Left Hand Side keys are the same as in Layer 0 (i.e., pass-through).

**Right Hand Side:**
- Navigation keys (e.g., Arrows, Home/End, Page Up/Down)
- Special purpose keys (e.g., Print, Caps Lock, Scroll Lock)
- Media keys (e.g., Volume Up/Down, Play/Pause)
- Home-row mods

### Layer 3

**Left Hand Side:**
- Function keys (e.g., F1 - F12)
- Del and Tab
- Home-row mods

**Right Hand Side:**
Right Hand Side keys are the same as in Layer 0 (i.e., pass-through).
