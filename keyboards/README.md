# Firmware Configuration for Keyboards

## Rationale
There are two senses we utilize when we use keyboards as input devices:
- _Vision_ (e.g., look at the keyboard for hand-eye coordination)
- _Touch_ (e.g., find home key positions by the tactile feel)

Unless trained to _touch type,_ most of us would instinctively use vision-based guiding to orient our hands over a keyboard.

I view the practice of only optimizing for just one of these guiding senses as a mistake. It can be a hindrance or it's a wasted opportunity at best.

Let's take each of the following poor optimization and/or design choices.
- A comically long spacebar wasting valuable real estate on a keyboard surface
- Each of the fingers with the shortest reach—the pinkies—needs to hit twice as many (or more) keys as the middle and ring fingers
- Each pinky finger is assigned the heaviest workload (e.g., holding down modifier keys such as Shift and Ctrl)
- Both of the opposable thumbs—an evolutionary advantage—are assigned to occasionally tap the said long bar
- Rows of keys are arranged traditionally since the nineteenth century with not much utility nor ergonomic purpose (e.g., row staggering)
- The default fixed keyboard layout (i.e., QWERTY) is ergonomically inferior to all other mainstream alternatives
- Minimalist keyboards don't have enough space to dedicate for frequently used keys

Given where I live—the 21st century, that is—I can't justify using poorly designed keyboards while my wrists hurt. Therefore, I use a custom mechanical keyboard that is tweaked (and continues to be tweaked) for my preference based on the following guidelines.


## Design Guidelines
### Custom firmware
A mechanical keyboard is an expensive investment, especially if it comes with the support for _custom firmware (e.g., QMK, ZMK)._ Custom firmware allows you to configure any custom layout and save it into the onboard flash memory, enabling you to use your customized layout without having to install any software on a computer.

My current daily-driver keyboard of choice supports QMK firmware and VIA configurator out of the box. This means I can map any key to anything I want and don't need to flash the firmware every time I do so.

### Ergonomic form factor
Ergonomics can mean different things to different people. On one hand, we have the traditional QWERTY keyboards. On the far end of the ergonomic spectrum, we have keyboards custom designed for individual hands and use cases. I feel an _ortholinear (aka matrix)_ keyboard provides a meaningful balance in between as a pragmatic base for most people.

Since I prefer a split typing area configuration, I picked up a larger 15x5 grid ortho keyboard (i.e., Idobao ID75) instead of the more common smaller ortho keyboards (e.g., OLKB Planck/Preonic). This gives me a uniform grid of 1U keys and enough space to configure everything I want.

### Colemak layout base
My base layout of choice is _Colemak._ It is a well-designed layout, relatively easier to migrate from QWERTY, and does not break the so-called universal shortcuts (e.g., Ctrl+C, Ctrl+V). It is also comfortable and satisfying to type in, especially if you touch type.

I use Colemak on my QMK base layer for the alphabetical keys. However, there are additional configurations to further tweak it to my preference (e.g., split typing areas, layers, and thumb clusters).  I chose vanilla Colemak as my base after trying out some alternative layouts such as Dvorak, Colemak-DH, etc.

### 1DFH for touch typing
_1 Distance from Home (1DFH)_ design principle essentially means you only move a finger one distance away in any direction from its home position. This also means very little hand movement is needed, making it much easier to maintain good typing posture.

On an ortholinear keyboard, these distances are uniform in a given direction unlike in regular keyboards. No more reaching out to far away keys like "]". I also use all ten fingers including thumbs for 1DFH. 

### Thumb key clusters
_Thumb clusters_ mean what it sounds. Instead of using both thumbs for the single spacebar, both of the human opposable thumbs can be put to good use. Adhering to the 1DFH principle also means there are at least six keys physically assigned for the two thumbs, more if you differentiate between _Tap_ and _Hold_ behaviors.

I use these six keys for things like Space, Backspace, Enter, Shift, and Layer Switches.

### Layers
_Layers_ in a keyboard mean additional characters or functions can be available on the same physical key by temporarily switching to a different layer. This is similar to when we press Shift, Fn, or Capslock.

My current daily driver keyboard came with 4 layers as it is the default layers count in QMK. My configuration of these four layers (i.e., 0-3) is described below. In addition to the keyboard input function, I have also included basic mouse functions and a couple of other conveniences within these layers.

### Dedicated keys for visual guiding
As explained earlier, sometimes you need to hit a key with visual-only guiding (i.e., Hand-Eye coordination). Therefore, dedicated keys can be assigned for such frequently used keys.

In my case, these are keys like Modifiers (e.g., Ctrl, Shift, Alt, etc.), Navigation (e.g., Page Up/Down, Home/End, Arrows), Numbers, Function-keys, and Special Characters.

### Dedicated keys for tactile guiding
There are usually at least two homing keys in a keyboard (e.g., "F" and "J" with a distinct feel to touch on a QWERTY keyboard, "5" on a number pad). In addition, the four corners of a rectangular keyboard are prime spots to have dedicated keys you can find just by touch.

Therefore, I have used Esc, Del, Arrow, and Ctrl on the four corners. Colemak layer has T and N in place for the homing positions. Since I approach a keyboard with both hands at an inwards angle, my thumb home positions ended up being on the bottom row directly below my index finger home positions.


## Current Layouts
My daily-use main keyboard is built from an Idobao ID75 custom keyboard kit, configured as a ortholinear (matrix) split keyboard in a single body.

The below Layout G-19 gives the most amount of space between the split area and therefore, better ergonomics. However, I currently prefer the Layout G-22 below because it is ergonomically closer to G-19 (and has only slightly less space between the split areas) and does not let my pinkies get too lazy over time.

### Current Layout 1: [G-22](Idobao%20ID75/G-22.json)
![Current Layout: G-22](https://i.imgur.com/SctIaXW.png)

Layers are described in the sections below.

The above is how the keyboard looks with a set of keycaps on. The keycap placement is primarily optimized for visual guiding. For example, the keycaps are in QWERTY arrangement because I can touch type in Colemak and I use a visually distinct keycap for Enter, etc. Homing positions are also maintained for tactile guiding (e.g., I only need homing positions for touch typing). Finally, the place-holder keycaps are also used based on the aesthetics (e.g., match/contrast the color of the surrounding keys).

#### Layer 0 (Base Layer):
![Base Layer: Colemak](https://i.imgur.com/wSYBbHy.png)

__Colemak__ base layer for split _1DFH_ touch typing, including thumb clusters.

Left Thumb Cluster (from L to R):
- Shift,
- Space, and
- Switch to Layer 1 (on Hold)

Right Thumb Cluster (from R to L):
- Shift (on Hold) & Enter (on Tap)
- Backspace, and
- Switch to Layer 2 (on Hold)

In addition, the four corners of the keyboard have useful keys so that they can be hit without being seen.

#### Layer 1:
![Layer 1: Symbols & Special Keys](https://i.imgur.com/n3nVUXS.png)

Left Hand Side:
- Numbers & Symbols on the Home Row
- Quick access to Esc, Tab, ~, Menu, and Del
- Ctrl+X/C/V/Z shortcut Macros
- Tap Ctrl (on Home Row) and press any key to comple a Ctrl+key sequence

Right Hand Side:
- Numbers & Symbols on the Home Row
- F6 - F10
- Shift
- Volume Up/Down

In addition, Layer 1 also has function keys, 'Toggle Layer 3' (i.e., QWERTY layer), and Media Play/Pause.

This layer is accessed by holding the 'Switch to Layer 1' key with the Right Thumb.

#### Layer 2:
![Layer 2: Frequent Symbols & Mouse](https://i.imgur.com/tvG6tKb.png)

Right Hand Side:
- Quick access to Symbols (including the Home Row)
- Mouse movement and scroll actions
- Backspace entire-word Macro

Left Hand Side:
- Numbers & Symbols on the Home Row
- F1 to F5
- Mouse buttons 1 - 4
- Shift

In addition, Layer 1 also has F1 to F12 function keys, Media Play/Pause, and Capslock.

This layer is accessed by holding the 'Switch to Layer 2' key with the Left Thumb. It is busier than Layer 2 because Right Hand is the one that usually moves around (e.g., access arrow cluster, use external mouse).

#### Layer 3:
![Layer 3: QWERTY](https://i.imgur.com/jTKZ5Tw.png)

_QWERTY_ layout layer (e.g., for convenience in games)


### Current Layout 2: [G-19](Idobao%20ID75/G-19.json)
![Current Layout: G-19](https://i.imgur.com/dvXam8h.png)

Layers are described in the sections below.

The above is how the keyboard looks with a set of keycaps on. The keycap placement is primarily optimized for visual guiding. For example, the keycaps are in QWERTY arrangement because I can touch type in Colemak and I use a visually distinct keycap for Enter, etc. Homing positions are also maintained for tactile guiding (e.g., I only need homing positions for touch typing). Finally, the place-holder keycaps are also used based on the aesthetics (e.g., match/contrast the color of the surrounding keys).

#### Layer 0 (Base Layer):
![Base Layer: Colemak](https://i.imgur.com/qaIINQn.png)

__Colemak__ base layer for split _1DFH_ touch typing, including thumb clusters.

Left Thumb Cluster (from L to R):
- Shift,
- Space, and
- Switch to Layer 1 (on Hold) & Del (on Tap)

Right Thumb Cluster (from R to L):
- Arrow
- Shift (on Hold) & Enter (on Tap), and
- Switch to Layer 2 (on Hold) & Backspace (on Tap)

In addition, the four corners of the keyboard have useful keys so that they can be hit without being seen.

#### Layer 1:
![Layer 1: Special Keys & Arrows](https://i.imgur.com/gz21akR.png)

Left Hand Side:
- Quick access to Esc, Tab, and ~
- Arrow Cluster and Home/End
- Ctrl+X/C/V/Z shortcut Macros
- Tap Ctrl (Left Thumb) and press any key to comple a Ctrl+key sequence

Right Hand Side:
- Arrow keys on the Home Row
- Home/End adjacent to the Home Row arrows
- Numbers 6 - 0
- Shift

In addition, Layer 1 also has F1 to F12 function keys, Capslock, Screen Brightness Increase/Decrease, Volume Up/Down, and Media Play/Pause.

This layer is accessed by holding the 'Switch to Layer 1' key on the base layer with the Right Thumb. 

#### Layer 2:
![Layer 2: Symbols & Mouse](https://i.imgur.com/tQ1T6aH.png)

Right Hand Side:
- Quick access to Symbols (including the Home Row)
- Mouse movement and scroll actions
- Backspace entire-word Macro

Left Hand Side:
- Symbols on the Home Row
- Numbers 1 - 5
- Mouse Buttons 1 - 4 
- Shift

In addition, Layer 2 also has F1 to F12 function keys, 'Toggle Layer 3' (i.e., QWERTY layer), Screen Brightness Increase/Decrease, Volume Up/Down, and Media Play/Pause.

This layer is accessed by holding the 'Switch to Layer 2' key on the base layer with the Left Thumb. It is busier than Layer 1 because Right Hand is the one that usually moves around (e.g., access arrow cluster, use external mouse).

#### Layer 3:
![Layer 3: QWERTY](https://i.imgur.com/i9roU7R.png)

_QWERTY_ layout layer (e.g., for convenience in games)


### Other Layouts

#### [G-18](Idobao%20ID75/Previous%20Layouts/G-18.json)
Screenshots:
<blockquote class="imgur-embed-pub" lang="en" data-id="a/WfUXuTO"  ><a href="//imgur.com/a/WfUXuTO">Keymap Dev - G-18 - Idobao ID75 - QMK/VIA - 23.05</a></blockquote>

#### [G-16](Idobao%20ID75/Previous%20Layouts/G-16.json)
Screenshots:
<blockquote class="imgur-embed-pub" lang="en" data-id="a/n7rGcCq"  ><a href="//imgur.com/a/n7rGcCq">Keymap Dev - G-16 - Idobao ID75 -  QMK/VIA - 23.04</a></blockquote>
