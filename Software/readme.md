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

![EEG/EMG recording in Sirenia acquisition](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/acquisition.jpeg)
**Figure 1.** _EEG/EMG recording in Sirenia acquisition._

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

**Figure 2:** _A pop-up window named 'Export EDF' will appear after selecting the 'File > Export > EDF' option in the top toolbar._

### Exporting video

#### Install ffmpeg

This portion of the guide explains how to install `ffmpeg`, which is used to split and convert `.webm` videos to `.mp4`.

1. Download the lastest ffmpeg essentials build for Windows OS [here](https://www.gyan.dev/ffmpeg/builds/)
2. Extract the folder to the `C:` local disk drive
3. Right click the Windows Start Menu icon in the lower left taskbar, then select 'System'

![Windows System Settings](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/system-settings.jpeg)

**Figure 2:** _Access the System Settings by right clicking the Windows Start Menu icon and selecting 'System'._

4. Click on 'Advanced system settings'
5. A new 'System Properties' window will appear. Click 'Environment Variables...'
6. Under 'System variables' highlight the 'Path' variable and click 'Edit'

![Windows Environment Variables](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/environment-variables.JPG)

**Figure 3:** _Click 'Advanced system settings' (1), then click 'Environment Variables...' (2). In the 'Environment Variables' window, highlight 'Path' (3), then click 'Edit' (4)._

7. A new 'Edit environment variable' window will open. Click 'New', then paste the ffmpeg `bin` directory address (e.g. `C:\ffmpeg-7.0.1-essentials_build\bin`). Then click 'OK'

![Creating a new Windows PATH Environment Variable](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/new-variable.JPG)

**Figure 4:** _In the 'Edit environment variable' window, click 'New', then paste the ffmpeg `bin` directory address._

8. To test if ffmpeg was installed successfully, launch the 'Command Prompt' and execute the command `ffmpeg`. The terminal should output the ffmpeg version, build, and configuration

![Verifying ffmpeg installation](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/ffmpeg.JPG)

**Figure 5:** _In the 'Command Prompt', run the `ffmpeg` command to see an output similar to this figure._

#### Export video in Sirenia Acquisition

1. In the top toolbar, select 'File > Export > Video'. A small pop-up named 'Export Video' will appear.
2. In the 'File' prompt, choose the desired folder destination and filename
  * It's recommended to export all videos corresponding to each mouse into separate folders
3. Set the date/time range you would like to export in the 'Start Time' and 'End Time' prompts (format: MM/DD/YEAR HH:MM:SS.00)
  * Video duration should be no longer than 24 hours (24:00:00)
4. Select the `.webm` file extension
5. Select the desired camera video source (select only one source per video export)
6. Click 'OK'. A new 'Exporting Video' window will appear with a green progress bar.
7. Once complete, a new window will pop up asking 'Optimize webm file?'. Click 'Yes'.
  
  ![Export Video pop-up window](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/export-video.JPG)
  
  **Figure 6:** _A pop-up window named 'Export Video' will appear after selecting the 'File > Export > Video' option in the top toolbar._

#### Slice and convert videos

This portion of the guide explains how to slice and convert multi-hour long '.webm' videos to sequential, 1-hour long videos ('.mp4' format)

1. Download the `webm-splitter.ps1` Windows PowerShell script [here](./scripts/webm-splitter.ps1)
2. Open Windows PowerScript
3. In the terminal, change the current working directory to the folder where the script was installed using the `cd` command (e.g. `cd C:\Users\Rivasda\Documents\powershell-script`)
4. Request authority to run the script by running this command : `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`
  * A prompt for the 'Execution Policy Change' will appear. Enter `Y` 
5. Finally, run the script using this command: `.\webm-splitter.ps1`
6. When prompted, paste and enter the folder path containing the '.webm' files (e.g. `C:\Users\Rivasda\Downloads\2024_04_30`)
  * Within the folder path, the script will create a subfolder for each '.webm' file. The output videos will be saved to the corresponding subfolder (named after the source video file)

![Running the Windows PowerShell webm-splitter script](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/webm-splitter.jpeg)

**Figure 7:** _An example of the user input to run the `webm-splitter.ps1` script (left window) and the resulting output while it's running (right window)._

7. Check the video outputs and ensure the files are not corrupt

