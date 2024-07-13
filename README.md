# This repository contains hardware and software requirements for running continuous EEG/EMG recordings in mice.

We are developing a EEG/EMG setup to investigate the sleep profile and seizure
incidence in mice using Pinnacle Technology's [3-Channel EEG/EMG Mouse System](https://store.pinnaclet.com/products/8200-k1-3-channel-eeg-emg-mouse-system).

### Table of contents

| **Section** | **Description** |
|:-|:-|
| [Hardware](#hardware) | Hardware requirements and setup tutorial |
| [Software](#software) | Software requirements and setup tutorial |
| [Future directions](#future-directions) | Planned updates to the project |
| [Contact](#contact) | Email the researchers taking lead on the project |

## Hardware

The mouse EEG/EMG experiments take place inside modified Med Associates
sound-attenuating cubicles that are outfitted with
Faraday-shielding copper mesh and sound-proof acoustic foam panels. The
mice undergoing recordings are individually housed inside custom-cut acrylic cages.
Circadian lighting is achieved using LED & IR lights that are powered via
24-hour programmable outlet timers. EEG/EMG signals are recorded
using Pinnacle's EEG/EMG tethered mouse system and headmounts. Overhead cameras are used to record video of
mouse behavior in-sync with EEG/EMG recordings.

![EEG/EMG cubicle outfitted with copper mesh and acoustic foam
panels](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/eeg-box.jpg)
**Figure 1.** _Modified cubicle used for EEG/EMG recordings._

### Hardware requirements

- Pinnacle 3-Channel EEG/EMG Mouse System
- Pinnacle EEG/EMG headmounts
- Modified Med Associates Sound Attenuating Cubicle
- Recording enclosure
- Camera(s)
- Desktop/laptop (Windows OS)

For a detailed hardware setup tutorial, please click [here](./Hardware/).

## Software

We are using Pinnacle Technology's [Sirenia Acquisition Software](https://www.pinnaclet.com/sirenia.html) for video-EEG/EMG recordings, which requires the Windows OS environment.

For analysis, we are using [this MATLAB script found here](https://github.com/thepenglab/edfEEG2024) to analyze the sleep states from EEG/EMG data ('.edf' format).

### Software requirement

- [Sirenia](https://www.pinnaclet.com/sirenia-download.html)
- [ffmpeg](https://www.gyan.dev/ffmpeg/builds/)
- [MATLAB script](https://github.com/thepenglab/edfEEG2024)
- Windows OS

For a detailed software setup tutorial, please click [here](./Software/).

## Future directions

1. Developing a software analysis guide
2. Developing a custom analysis code
3. Developing a DeepLabCut model for XY tracking

-----

## Contact

For any questions or inquiries, please email the researchers taking
lead on the project below:
- [Gergely Turi](mailto:gt2253@cumc.columbia.edu)
- [Rebecca Muhle](mailto:ram76@cumc.columbia.edu)
- [David Rivas](mailto:dfr5108@gmail.com)