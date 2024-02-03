# Hardware 

## Hardware requirements

For a comprehensive list of hardware materials used in the build, please
click [here](./BOM.md).

For the laser-cut files and drawings, please click [here](./Laser%20cut%20parts/).

- Pinnacle Data Conditioning and Acquisition System(s)
- Pinnacle EEG/EMG headmounts
- Modified Med Associates Sound Attenuating Cubicle
- Recording enclosure
- Camera(s)
- Desktop/laptop

## Setup guide
1. [Faraday-shielding and sound-proofing](#faraday-shielding-and-sound-proofing)
2. [Aluminum framing](#aluminum-framing)
3. [Pinnacle System & lighting](#pinnacle-system--lighting)
4. Camera setup
5. Recording enclosure

-----

## Faraday-shielding and sound-proofing

**Materials**
- [Med Associates Sound Attenuating Box](https://med-associates.com/product/sound-attenuating-cubicles-mdf/)
- [Copper mesh](https://www.twpinc.com/100-mesh-copper-0045-wire-dia)
- [Acoustic foam panels](https://www.amazon.com/Self-Adhesive-Quick-Recovery-Elasticity-Eco-Friendly-WVOVW/dp/B0BLTSW8KC)
- Staples & staple gun
- Disinfecting wipes

**Steps**
1. Clean the inside of the Med Associates box with disinfecting wipes
2. Uninstall the doors from the hinges
3. Measure and cut the copper mesh to the dimensions of the inside box and door
   panels
4. Fix the copper mesh to the inside box surfaces with staples
5. Cut holes in the copper mesh for the box's door hinges, ventilation fan, and cable hole
6. Reinstall the screws for the door hinges through the copper mesh
7. Fix the acoustic foam panels, over the copper mesh, to the inside box
   surfaces with staples
8. Cut holes in the foam for the door hinges and ventilation fan

## Aluminum framing

**Materials**
- [T-slot aluminum extrusion profile
  framing](https://8020.net/framing-options/t-slotted-profiles.html)
- [T-nuts](https://8020.net/search/?q=t-nut)
- 1/4" screws
- Drill

**Steps**
1. Install two aluminum railings (23 3/8" long) that are positioned 1.5" from
   the ceiling and 5" apart using 1/4" screws and a drill (_drawing needed_)
    * Using a blade, carefully remove the acoustic foam from the inside wall of
      the box with accordance to the width of the aluminum
      railing
2. After installing the railings, slide in T-nuts to the railing's T-slots to
   your liking, which can be used to fix overhead attachments

## Pinnacle System & lighting

**Materials**
- Pinnacle Data Conditioning and Acquisition System(s) (Models
  [8401](https://store.pinnaclet.com/products/8401-hr-4-channel-data-conditioning-and-acquisition)
  &
  [8206](https://store.pinnaclet.com/products/8206-data-conditioning-and-acquisition-system)
  used)
- Amplifier-to-commutator extension cables ([8401
  extension](https://www.amazon.com/Copartner-E119932-T-20276-15-Pin-Monitor/dp/B00MSE7Y3W/)
  & [8206
  extension](https://www.amazon.com/Shielded-Cable-Black-Mouse-Keyboard/dp/B0933GL5CX/)
  used)
- [LED
  lights](https://www.amazon.com/JUSJUBR-Lighting-Dimmable-Function-Bookshelf/dp/B0CCDPNYFG)
- [IR light(s)](https://store.pinnaclet.com/products/9057-illuminator)
- [24-HR programmable outlet timer](https://www.amazon.com/Fosmon-Programmable-Seasonal-Portable-Aquarium/dp/B07HCQKRRY)
- Custom laser-cut plate mounts (refer to [laser cut
  files](./Laser%20cut%20parts/))
- [1/8" acrylic sheets](https://www.canalplastic.com/)
- Laser cutter ([Thunder Laser Nova
  35](https://www.thunderlaserusa.com/machines/nova/) used)
- [T-nuts](https://8020.net/search/?q=t-nut) & screws

**Steps**
1. Laser-cut plate mounts for the commutators, LED lights, and IR lights using
   acrylic sheets and the laser-cut files [found
   here](./Laser%20cut%20parts/)
2. Fix the commutators, LED lights, and IR lights to the plate mounts and T-nuts
   using screws
    * Ensure the commutator is mounted directly overhead the intended spot for the recording enclosure
3. Install the amplifier-to-commutator extension cables
4. Feed the wires through the cable hole found on the side of the Med Associates
   box
5. Connect the LED light power cable to a 24-HR programmable outlet timer
    * Program the timer "on" phase to be 12 hours
6. Power on the IR light and set the switch to automatic (A)

## Camera setup

We are currently using two different cameras, each of which have their own setup
instructions below.

**Materials**
- [Arducam B0205 camera](https://www.amazon.com/Arducam-Computer-Automatic-Switching-All-Day/dp/B0829HZ3Q7/)
- [Arducam plate mount](./Laser%20cut%20parts/arducam_mount)
- Logitech C270 webcam (**old model**)
- [1/8" acrylic sheets](https://www.canalplastic.com/)
- Laser cutter ([Thunder Laser Nova
  35](https://www.thunderlaserusa.com/machines/nova/) used)
- [T-nuts](https://8020.net/search/?q=t-nut) & screws

### Arducam B0205 camera setup

**Steps**
1. Laser-cut the plate mount for the Arducam using acrylic sheets and the
   laser-cut file [found here](./Laser%20cut%20parts/arducam_mount)
2. Fix the camera next to the commutator to the plate mount and T-nuts using
   screws
3. Feed the wire through the cable hole found on the side of the Med Associates
   box

### Logitech C270 webcam setup

**NOTE:** This guide is for the older models of the Logitech C270, which have a removable IR filter
cover. The newer models sold today have the IR filter integrated
with the CCD sensor, and we **DO NOT** recommend attempting to remove the IR
filter from these. Be aware that removing the IR filter from any webcam comes with the risk of
damaging the CCD sensor, so proceed with caution.

**Steps**
1. Open the webcam enclosure to access the internal circuit board
2. Remove the lens to expose the CCD sensor
3. Using a needle, carefully pry off the IR filter cover
4. Reinstall the lens, screwing it back to the optimal focal length, and secure
   it in place with glue
    * Connect the webcam to a computer and watch a live video feed while doing
      this step
5. Fix the webcam with a screw to a T-nut
6. Feed the wire through the cable hole found on the side of the Med Associates
   box