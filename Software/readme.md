# Required software and custom written scripts will be listed here

## Software requirement

- [Sirenia](https://www.pinnaclet.com/sirenia-download.html)
- [MATLAB script](https://github.com/thepenglab/edfEEG2024)

## Setup guide

1. [Setting up an EEG/EMG recording](#setting-up-an-eegemg-recording)
2. [Exporting an EEG/EMG recording](#exporting-an-eegemg-recording)

## Setting up an EEG/EMG recording

This portion of the guide explains how to begin recording a video-EEG experiment
in Sirenia Acquisition. By default, Sirenia Acquisition experiments save in the `.pvfs` format. More than one amplifier and camera can be recorded at once in a single project file. Each amplifier will record EEG/EMG signal from the mouse it's connected to.

The EEG/EMG headmount should already be connected to the preamplifier before
beginning this portion of the guide. For instructions on how to properly connect
the headmount, please click [here](../Hardware/setup-guide/headmount.md).

1. In the top toolbar, select 'File > New Experiment'. A new window will appear.
    1. In the 'File:' prompt, choose a folder destination and file name
        * In our setup, we save project files to: 'E:/Sirenia-Acquisition-Experiments/[lab name]/'
    2. Enter the experiment name and animal ID in their respective fields
    3. Click 'Add Device' (USB icon). A small pop-up named 'Select Pod Device' will appear.
        * Under 'Connection', choose the amplifier system you will be using. The window will automatically close after selecting an amplifier.
          * **'8206HR - 21342'**: The amplifier on the left-side of our box (check labels on top of box)
          * **'8206HR-SL - 20275'**: The amplifier on the right-side of our box (check labels on top of box)
2. In the top menu, click 'Add Camera' (webcam icon) to add a camera source
    * Type: 'Box/Dome/USB Camera'
    * Camera: USB Camera 6369
      * By default, the Arducam B0205 camera is named 'USB Camera 6369'. Note how in our setup, there are two cameras listed with this same name.
3. Below the top menu are various tabs such as 'Device Params', 'EEG/EMG
   Channels', and 'Info', alongside tabs corresponding to the name of the amplifier
   and camera used
    * In the 'Info' tab, edits can be made to the project name, file name,
      Animal ID, etc.
4. Check the EEG/EMG signals and video feed to ensure the hardware is working as
   intended
    * If needed, adjust the position of the recording enclosure so that it's
      centered in the video frame
5. In the top menu, click the record button (round red button with letter 'R') to start recording the experiment
6. At the end of the experiment, click the red 'X' icon in the top menu to close experiment

## Exporting an EEG/EMG recording

This portion of the guide explains how to export a video-EEG experiment in Sirenia Acquisition. EEG/EMG data can be exported to an `.edf` format, which can then be analyzed using the MATLAB script, Sirenia software packages, or third-party software. Video can be exported to `.avi`, which can be analyzed for XY-movement tracking using third-party software.

### Exporting the EEG/EMG channels

By default, the project files are in `.pvfs` format, which are located in
the folder destination that was selected in the 'File:' prompt during the
project setup. This filetype will store project info, EEG/EMG data, and video. Additionally, this format can be opened with Sirenia software packagages, which in that case it's not necessary to export data to a different file format.

If you plan to analyze the channels using the MATLAB script, it's
required you export data in the `.edf` format:
1. In the top toolbar, select 'File > Export > EDF. A small pop-up named 'Export EDF' will appear.
2. Select all of the channels used in the experiment
  * If you ran more than one mouse in a project/experiment, verify which EEG/EMG channels correspond to which mouse. You may choose to export the EEG/EMG channels corresponding to different mice to separate files
3. In the 'Filename' prompt, choose the desired folder destination
4. Set the date/time range you would like to export in the 'Start Time' and 'End Time' prompts (format: MM/DD/YEAR HH:MM:SS.00)
4. Click 'OK'

![Export EDF pop-up window](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/export-edf.JPG)

**Figure:** _A pop-up window named 'Export EDF' will appear after selecting the 'File > Export > EDF' option in the top toolbar._

### Exporting video
1. In the top toolbar, select 'File > Export > Video'. A small pop-up named 'Export Video' will appear.
2. In the 'File' prompt, choose the desired folder destination
3. Set the date/time range you would like to export in the 'Start Time' and 'End Time' prompts (format: MM/DD/YEAR HH:MM:SS.00)
4. Select the `.avi` file extension
5. Select the desired camera video source
6. Click 'OK'. A small pop-up named 'Video Compression' will appear.
  
  ![Export Video pop-up window](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/export-video.JPG)
  
  **Figure:** _A pop-up window named 'Export Video' will appear after selecting the 'File > Export > Video' option in the top toolbar._
7. Under 'Compressor', select 'Xvid MPEG-4 Codec'
  * If you don't see this option, [download and install Xvid](https://www.xvid.com/), then re-launch Sirenia Acquisition
8. Click 'Configure'. A small pop-up named 'Xvid Configuration' will appear.
  
  ![Video compression pop-up window](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/video-compression.JPG)
  
  **Figure:** _A pop-up window named 'Video Compression' will appear after clicking the 'OK' option from the 'Export Video' window._
9. Under 'Profile @ Level', select 'MPEG4 SP @ L4a'
10. Under 'Encoding type', select 'Single pass'
11. Click 'OK'
  
  ![Xvid Configuration pop-up window](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/xvid-config.JPG)
  
  **Figure:** _A pop-up window named 'Xvid Configuration' will appear after clicking the 'Configure...' option from the 'Video Compression' window._
12. In the 'Video Compression' window, click 'OK'. The video export and compression should begin.