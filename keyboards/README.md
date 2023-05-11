# Firmware Configuration for Keyboards

## Rationale
There are two senses we utilize when we use keyboards as input devices:
- _Vision_ (e.g., look at the keyboard when needed)
- _Touch_ (e.g., find home key positions by the tactile feel)

Unless trained to _touch type,_ most of us would intuitively use vision-based guiding to orient our hands over a keyboard.

I view the practice of only optimizing for one of these guiding senses as a mistake. It's a wasted opportunity at best or can become a hindrance. Let's take each of the following poor optimization/design choices.
- A comically long spacebar wasting valuable real estate on a keyboard surface
- Each of the fingers with the shortest reach—the pinkies—needs to hit twice as many (or more) as the middle and ring fingers
- Each pinky finger is assigned the heaviest workload (e.g., holding down modifier keys such as Shift and Ctrl)
- Both of the opposable thumbs—an evolutionary advantage—are assigned to occasionally tap the said long bar
- Rows of keys are arranged traditionally since the nineteenth century with no utility nor ergonomic purpose (e.g., row staggering)
- The fixed keyboard layout (e.g., QWERTY) is ergonomically inferior to all other mainstream alternatives
- Minimalist keyboards that don't have enough space for frequently used keys

Given where I live—the 21st century, that is—I can't justify using poorly designed keyboards while my wrists hurt. Therefore, I use a custom mechanical keyboard that is tweaked (and continues to be tweaked) for my preference based on the following guidelines.


## Design Guidelines
### Custom firmware
A mechanical keyboard in an expensive investment, especially if it comes with the support for _custom firmware (e.g., QMK, ZMK)._ Custom firmware allows you to configure any custom layout and save it into the flash memory onboard, enabling you to use your customized layout without having to install any software.

My current daily driver of choice supports QMK firmware and VIA configurator out of the box. This means I can map may key to anything I want and don't need to flash my firmware every time I so.

### Ergonomic form factor
Ergonomics can mean different things to different people. On one end, we have the traditional QWERTY keyboards. On the far end of the other side, we have keyboards custom designed for individual hands and use cases. I feel an _ortholinear (aka matrix)_ keyboard provides a useful base for most people.

Since I prefer a split keyboard configuration, I picked up a larger 15x5 grid ortho keyboard instead of the more common small ortho keyboards like Preonic. This gives me a uniform grid of 1U keys and enough space to configure a split typing area arrangement.

### Colemak layout base
My base layout of choice is _Colemak._ It is a well-designed layout, relatively easier to migrate from QWERTY, and does not break the so-called universal shortcuts (e.g., Ctrl + C, Ctrl + V). It is also comfortable and satisfying to type in, especially if you are touch typing.

I use Colemak on my QMK base layer for the alphabetical keys. However, there are additional configurations to further tweak it to my preference (e.g., split typing areas, layers, and thumb clusters).  I chose vanilla Colemak as my base after trying out some alternative layouts such as Dvorak, Colemak-DH, etc.

### 1DFH for touch typing
_1 Distance from Home (1DFH)_ design principle essentially means you only move a finger 1 distance away in any direction from its home position. On an ortholinear keyboard, these distances are uniform in a direction unlike in regular keyboards. 

I use all ten fingers of the hands including thumbs with 1DFH. No more reaching out to far away keys like "]".

### Thumb key clusters
_Thumb clusters_ mean what it sounds. Instead of using both thumbs for the single spacebar, you put your opposable thumbs to use. Adhering to the 1DFH principle means there are at least six keys assigned between the thumbs.

Since I approach a keyboard with both hands at an inwards angle, my thumb home positions ended up being on the bottom row directly below my index finger home positions. I use these six keys for things like Space, Backspace, Enter, Shift, and Layer Switches.

### Layers
_Layers_ in a keyboard mean additional characters or functions can be available on the same physical key by switching to a different layer. This is similar to when we press Shift or Capslock.

My current daily driver comes with 4 layers, s the default number of layers in QMK/VIA. n an ortholinear keyboard, these distances are uniform in a direction unlike in regular keyboards. My configuration is described in the section below. In addition to the keyboard input function, I have also included basic mouse functions and a couple of other conveniences within the layers.

### Dedicated keys for visual guiding
As explained earlier, sometimes you need to hit a key with visual-only guiding. Therefore, dedicated keys can be assigned for such frequently used keys.

In my case, these are keys such as Modifiers (e.g., Ctrl, Shift, Alt, etc.), Navigation (e.g., Page Up/Down, Home/End, Arrows), Numbers, Function-keys, etc.

### Dedicated keys for tactile guiding
The four corners of the keyboard are prime spots to have dedicated keys you can find just by touch.

Therefore, I have used Esc, Del, Arrow, and Ctrl on the four corners. These are easier to hit without looking.


## Current Layouts
My Idobao ID75 configured as a ortholinear (matrix) split layout in a single body.

### Current Layout: [G-20](./Idobao\ ID75/G-20.json)
![Current Layout: G-20](https://i.imgur.com/TODO.png)

#### Layer 0 (Base Layer):
![Base Layer: Colemak](https://i.imgur.com/TODO.png)

__Colemak__ base layer for split _1DFH_ touch typing, including thumb clusters.

Left Thumb Cluster (from L to R):
- Shift,
- Space, and
- Layer 1

Right Thumb Cluster (from R to L):
- Shift on Hold / Enter on Tap
- Backspace, and
- Layer 2

In addition, the four corners of the keyboard have useful keys so that they can be hit without looking.

#### Layer 1:
![Layer 1: Frequent Symbols](https://i.imgur.com/TODO.png)

_Right Hand_ access to frequently used symbols and navigation keys + _Number Row_ easy access + _Mouse_ keys + _Left Hand_ access for _Mods,_ especially Shift.

#### Layer 2:
![Layer 2: Mouse and Media](https://i.imgur.com/TODO.png)

_Home Row_ arrows + _Media/Brightness_ keys + _Number Row_ easy access

#### Layer 3:
![Layer 3: QWERTY Layer](https://i.imgur.com/TODO.png)

QWERTY layout layer (e.g., for convenience in games)


### Other Layouts

#### [G-18](./Idobao\ ID75/Previous\ Layouts/G-18.json)
G-18 images:


#### [G-16](./Idobao\ ID75/Previous\ Layouts/G-16.json)
G-16 images:
<blockquote class="imgur-embed-pub" lang="en" data-id="a/n7rGcCq"  ><a href="//imgur.com/a/n7rGcCq">Keymap Dev - Idobao ID75 - QMK/VIA - 23.04</a></blockquote>
