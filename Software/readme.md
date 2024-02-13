# Required software and custom written scripts will be listed here

**Software requirement**
- [Sirenia](https://www.pinnaclet.com/sirenia-download.html)

## Setting up an EEG/EMG recording

This portion of the guide explains how to begin recording a video-EEG experiment
in Sirenia Acquisition. More than one experiment can be recorded at a time, each
recorded in a separate instance of Sirenia Acquisition. Each experiment should
use a different amplifier for each mouse.

1. In the top toolbar, select 'File > New Experiment'. A new window will appear.
    1. In the 'File:' prompt, choose a folder destination and file name
        * In our setup, we save project files to: 'E:/Sirenia-Acquisition-Experiments/[lab name]/'
    2. Enter the experiment name and animal ID in their respective fields
    3. Click 'Add Device'. A small window will appear.
        * Choose the amplifier system you will be using. The window will automatically close after selecting an amplifier.
2. In the top menu, click the webcam icon to add a camera source
    * Choose the camera you wish to use
3. Below the top menu are various tabs such as 'Device Params', 'EEG/EMG
   Channels', and 'Info', alongside tabs corresponding to the name of the amplifier
   and camera used
    * In the 'Info' tab, edits can be made to the project name, file name,
      Animal ID, etc.
4. Check the EEG/EMG signals and video feed to ensure the hardware is working as
   intended
    * If needed, adjust the position of the recording enclosure so that it's
      centered in the video frame
5. In the top menu, click the record button to start recording the experiment
6. At the end of the experiment, click the red 'X' icon in the top menu to close experiment

## Exporting an EEG/EMG recording

This portion of the guide explains how to export a video-EEG experiment in
Sirenia Acquisition, which can then be analyzed using the Sirenia software packages
or third-party software.

### Exporting the channels

The Sirenia software packages can open `.pvfs` project files, which are saved in
the folder destination that was selected in the 'File:' prompt during the
project setup. In this case it's not necessary to export the channels to another
file format.

If you plan to analyze the channels using a third-party program, it's
recommended to export data in the `.edf` format:
1. In the top toolbar, select 'File > Export > EDF. A small window will appear.
2. Select all of the channels used in the experiment
3. Choose the desired folder destination
4. Click 'Export'

### Exporting video
1. In the top toolbar, select 'File > Export > Video'. A small window will appear.
2. Select the `.webm` file extension
3. Choose the desired folder destination
4. Click 'Export'
4. When prompted to optimize the video, click 'Yes'