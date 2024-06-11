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
1. In the top toolbar, select 'File > Export > EDF. A small window will appear.
2. Select all of the channels used in the experiment
3. Choose the desired folder destination
4. Click 'Export'

### Exporting video
1. In the top toolbar, select 'File > Export > Video'. A small window will appear.
2. Select the `.avi` file extension
3. Choose the desired folder destination
4. Click 'Export'